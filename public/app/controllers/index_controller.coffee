App.IndexController = Ember.ObjectController.extend
  
  createUser: ->
    # Validate again on submit incase fields were left empty
    @getValue 'firstName'
    @getValue 'lastName'
    @getValue 'email'
    @getValue 'password'
    @getValue 'accountType'

    errors = _.uniq [@get('firstNameError'), @get('lastNameError'), @get('emailError'), @get('passwordError'), @get('accountTypeError')]

    if errors.length is 1 and errors[0] is 'false'
      @store.commit()

      @content.addObserver '_id', this, 'afterCreate'

  afterCreate: ->
    @content.removeObserver '_id', @, 'afterCreate'

  validateFirstName: ->
    @getValue 'firstName'

  validateLastName: ->
    @getValue 'lastName'

  validateEmail: ->
    @getValue('email') and @isEmail 'email'

  validatePassword: ->
    @getValue('password') and @minLen('password', 6)

  validateAccountType: ->
    @getValue 'accountType'

  getValue: (val) ->
    error = false
    unless result = !!@get val
      error = true
      console.log "#{val} has error"
    @set "#{val}Error", error

    result

  isEmail: (val) ->
    value = @get val
    error = false
    pattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/
    
    unless pattern.test value
      error = true
      console.log "#{val} has an error"

    @set "#{val}Error", error

    error

  minLen: (val, minLen) ->
    value = @get val
    error = false

    unless value? and value.length >= minLen
      error = true
      console.log "#{val} has an error"

    @set "#{val}Error", error

    error