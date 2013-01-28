mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

UserSchema = new Schema
  firstName: type: String, required: true
  lastName: type: String, required: true


module.exports = mongoose.model 'User', UserSchema