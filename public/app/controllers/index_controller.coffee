App.IndexController = Ember.ObjectController.extend
  
  create: ->
    @store.commit()
    console.log(@content)
    @content.addObserver '_id', this, 'afterCreate'

  afterCreate: ->
    @content.removeObserver '_id', @, 'afterCreate'
    console.log('ssss')