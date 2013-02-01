App.Config = DS.Model.extend
  stripeSecret: DS.attr 'string'
  stripeAPIKey: DS.attr 'string'
  user: DS.belongsTo('App.User')
