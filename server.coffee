# Define third-party libraries
util = require 'util'
cluster = require 'cluster'
express = require 'express'
app = express()
_ = require 'underscore'
CONF = require 'config'
less = require 'less'
hbs = require 'hbs'
mongoose = require 'mongoose'
pub_dir = CONF.app.pub_dir
pub_dir = "/#{pub_dir}" unless pub_dir[0] is "/" # humans are forgetful
pub_dir = __dirname + pub_dir

mongoose.connect CONF.app.db

###
All environments
###

app.configure ->
  app.set "views", __dirname + "/views"
  app.set "view engine", "handlebars"
  app.engine "handlebars", hbs.__express
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.query()
  app.use express.cookieParser CONF.app.cookie_secret
  app.use express.session()
  app.use app.router
  app.use express.static pub_dir
  app.use express.errorHandler(
      dumpExceptions: true
      showStack: true
  )

  
  #app.use(express.responseTime());


  # Catch-all error handler. Override as you see fit
  app.use (err, req, res, next) ->
    console.error err.stack
    res.send 500, "An unexpected error occurred! Please check logs."


#-- Routes configuration is externalized in a different module (can be multiple) for cleaner code.
module.exports.app = app
require "./lib/routes"
#-- End routes configuration.

numCPUs = require("os").cpus().length
if cluster.isMaster and (process.env.NODE_CLUSTERED is 1)
  util.log "Starting app in clustered mode"
  i = 0

  while i < numCPUs
    cluster.fork()
    i++

  cluster.on "fork", (worker) ->
    util.log "Forking worker #", worker.id
    timeouts[worker.id] = setTimeout ->
      util.error ["Worker taking too long to start"]
    , 2000

  cluster.on "listening", (worker, address) ->
    util.log "Worker ##{worker.id} listening on port: #{address.port}"
    clearTimeout timeouts[worker.id]

  cluster.on "online", (worker) ->
    util.log "Worker ##{worker.id} is online"

  cluster.on "exit", (worker, code, signal) ->
    util.error ["The worker ##{worker.id} has exited with exitCode #{worker.process.exitCode}"]
    clearTimeout timeouts[worker.id]
    
    # Don't try to restart the workers when disconnect or destroy has been called
    if worker.suicide isnt true
      util.debug "Worker ##{worker.id} did not commit suicide, restarting"
      cluster.fork()

  cluster.on "disconnect", (worker) ->
    util.debug "The worker ##{worker.id} has disconnected"

  
  # Trick suggested by Ian Young (https://github.com/isaacs/node-supervisor/issues/40#issuecomment-4330946)
  # to make cluster and supervisor play nicely together:
  if process.env.NODE_HOT_RELOAD is 1
    signals = ["SIGINT", "SIGTERM", "SIGQUIT"]
    _.each signals, (signal) ->
      process.on signal, ->
        _.each cluster.workers, (worker) ->
          worker.destroy()
else
  app.listen CONF.app.port
  util.log "Express server instance listening on port #{CONF.app.port}"