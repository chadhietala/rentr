unless module.parent
  console.log("Please don't call me directly. I am just the main app's minion.")
  process.exit(1)

app = module.parent.exports.app

homeCtrl = require './controllers/home_controller'
userCtrl = require './controllers/user_controller'
configCtrl = require './controllers/config_controller'

app.get '/', homeCtrl.root
app.post '/users', userCtrl.create
app.get '/config', configCtrl.index
app.get '/config/:1', configCtrl.index