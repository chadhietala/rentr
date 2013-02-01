require 'routes/index_route'
require 'routes/application_route'

DS.RESTAdapter.configure "plurals", {
  config: "config"
}

App.Router.map ->
  @resource 'index'