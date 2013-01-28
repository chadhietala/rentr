Ember.Control = Ember.View.extend

  init: ->
    this._super()
    
    Ember.set(this, '_context', this);
  




Ember.RadioButton = Ember.View.extend
  attributeBindings: ['disabled', 'type', 'name', 'value', 'checked']
  class: ['ember-radio-button']
  value: null
  selectedValue: null
  isDisabled: null
  tagName: 'input'
  type: 'radio'

  selectedValueChanged: Ember.observer ->
    selectedValue = Ember.get this, 'selectedValue'

    unless Ember.isEmpty(selectedValue) and Ember.get(this, 'value') is selectedValue
      Ember.set this, 'checked', true
    else
      Ember.set this, 'checked', false

  , 'selectedValue'

  checkChanged: Ember.observer ->
    @_updateElementValue()
  , 'checked'

  init: ->
    @_super()
    @selectedValueChanged()

  change: ->
    Ember.set this, 'checked', @$().prop('checked')
    Ember.run.once this, @_updateElementValue

  _updateElementValue: ->
    return unless Ember.get(this, 'checked')
    Ember.set this, 'selectedValue', Ember.get(this, 'value')

Ember.RadioButtonGroup = Ember.Control.extend
  classNames: ['ember-radio-button-group']
  attributeBindings: ['name:data-name']
  name: Ember.required()
  value: null
  RadioButton: Ember.computed ->
    return Ember.RadioButton.extend
      group: this
      selectedValueBinding: 'group.value'
      nameBinding: 'group.name'