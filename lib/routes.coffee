unless module.parent
  console.log("Please don't call me directly. I am just the main app's minion.")
  process.exit(1)

app = module.parent.exports.app

homeCtrl = require './controllers/home_controller'
userCtrl = require './controllers/user_controller'

app.get '/', homeCtrl.root
app.post '/users', userCtrl.create