# 3rd Party dependencies
require '../dependencies/jquery'
require '../dependencies/handlebars-runtime'
require '../dependencies/ember'
require '../dependencies/ember-data'
require '../dependencies/compiled/templates'

window.App  = Ember.Application.create
  rootElement: if window.TESTING then '#qunit-fixture' else '#rentrapp'

if window.TESTING
  window.App.deferReadiness()

# Data Store and all the Models
require 'models/store'
require 'models/user'

# Controllers 
require 'controllers/index_controller'

# Views

# Router
require 'routes/router'