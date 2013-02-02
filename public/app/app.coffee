# 3rd Party dependencies
require '../dependencies/convenience_methods'
require '../dependencies/jquery'
require '../dependencies/handlebars-runtime'
require '../dependencies/ember'
require '../dependencies/ember-data'
require '../dependencies/compiled/templates'

# Base View Extensions not yet in Ember
require 'views/Ember.RadioButton'
require 'views/Ember.TextField'

window.App  = Ember.Application.create
  rootElement: if window.TESTING then '#qunit-fixture' else '#rentrapp'

if window.TESTING
  window.App.deferReadiness()

# Data Store and all the Models
require 'models/store'
require 'models/user'
require 'models/config'

# Controllers 
require 'controllers/application_controller'
require 'controllers/index_controller'

# Views
require 'views/valid_textfield'

# Router
require 'routes/router'

