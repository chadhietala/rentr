App.IndexRoute = Ember.Route.extend
  model: ->    
    App.User.createRecord()

  setupController: (controller, model) ->
    @_super controller, model
    config = App.Config.find(1)
    controller.set 'content', config
