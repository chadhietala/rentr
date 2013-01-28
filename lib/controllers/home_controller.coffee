unless module.parent
  console.log "Please don't call me directly. I am just the main app's minion."
  process.exit 1

# Third-party libraries
_ = require("underscore")
CONF = require("config")

# Note: if you need to access smth in parent:
# var something = module.parent.exports.something
homeCtrl = module.exports

homeCtrl.root = (req, res) ->
  name = req.param "name", "stranger"
  context =
    site_title: "Rentr"
  res.render "home_index", context

