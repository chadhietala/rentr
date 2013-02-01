App.IndexRoute = Ember.Route.extend
  model: ->
    App.User.createRecord()