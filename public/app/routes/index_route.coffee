App.IndexRoute = Ember.Route.extend
  model: ->
    App.User.createRecord({firstName:'', lastName:''})
  setupController: (controller, model) ->
    @_super()
    controller.set('content', model)