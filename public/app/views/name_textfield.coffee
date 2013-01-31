App.NameTextField = Ember.TextField.extend
  focusOut: (event) ->
    controller = @get 'controller'
    viewName = @get 'viewName'
    validatorName = "#{Ember.String.classify(viewName)}"
    controller["validate#{validatorName}"]()