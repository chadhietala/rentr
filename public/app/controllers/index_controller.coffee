App.IndexController = Ember.ObjectController.extend
  
  _validate: (type) ->

  create: ->
    console.log(@content)

    @store.commit()
    @content.addObserver '_id', this, 'afterCreate'

  afterCreate: ->
    @content.removeObserver '_id', @, 'afterCreate'
    console.log('ssss')