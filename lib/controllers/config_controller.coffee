unless module.parent
  console.log "Please don't call me directly. I am just the main app's minion."
  process.exit 1

# Third-party libraries
_ = require "underscore"
CONF = require "config"
User = require "../models/user"

configCtrl = module.exports

configCtrl.index = (req, res) ->
  config =
    stripeSecret: CONF.app.stripe_test_secret
    stripeAPIKey: CONF.app.stripe_test_api_key

  res.send config: config