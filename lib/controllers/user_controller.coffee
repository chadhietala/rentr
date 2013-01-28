unless module.parent
  console.log "Please don't call me directly. I am just the main app's minion."
  process.exit 1

# Third-party libraries
_ = require "underscore"
CONF = require "config"
User = require "../models/user"

userCtrl = module.exports

# Not used and probably will never be needed
userCtrl.index = (req, res) ->
  User.find (err, users) ->
    unless err
      res.send users
    else
      console.log err

userCtrl.create = (req, res) ->
  user = new User
    firstName: req.body.user.first_name
    lastName: req.body.user.last_name

  user.save (err) ->
    console.log err if err

  res.send "user" : user

