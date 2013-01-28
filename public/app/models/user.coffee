App.User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  type: DS.attr 'string'
  _id: DS.attr 'string'
  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')