require 'routes/index_route'
require 'routes/application_route'



App.Router.map ->
  @resource 'application'
  @resource 'index'