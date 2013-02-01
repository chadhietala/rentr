App.User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  accountType: DS.attr 'string'
  email: DS.attr 'string'
  _id: DS.attr 'string'
  password: DS.attr 'string'
  stripeHREF: (->
    "https://connect.stripe.com/oauth/authorize?response_type=code&client_id=ca_1CvDTYxZuUjLVUmZRGJ9QzvLQiPQK3OG&stripe_user[last_name]=#{@get('lastName')}&stripe_user[first_name]=#{@get('firstName')}"
  ).property('email', 'firstName', 'lastName')
  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')