App.ApplicationRoute = Ember.Route.extend
  model: ->
    App.Config.find()