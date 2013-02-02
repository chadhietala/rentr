App.ApplicationRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @_super controller, model
    config = App.Config.find(1)
    controller.set 'content', config