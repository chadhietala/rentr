App.User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  accountType: DS.attr 'string'
  email: DS.attr 'string'
  _id: DS.attr 'string'
  password: DS.attr 'string'
  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')