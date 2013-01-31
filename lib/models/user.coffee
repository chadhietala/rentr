mongoose = require 'mongoose'
Schema = mongoose.Schema
bcrypt = require 'bcrypt'
SALT_WORK_FACTOR = 10
ObjectId = Schema.ObjectId

UserSchema = new Schema
  firstName:
    type: String
    required: true
  lastName:
    type: String
    required: true
  email:
    type: String
    required: true
    index:
      unique: true
  password:
    type: String
    required: true
  accountType:
    type: String
    required: true

UserSchema.pre 'save', (next) ->
  user = this

  # only hash the password if it has been modified (or is new)
  return next() unless user.isModified 'password'

  bcrypt.genSalt SALT_WORK_FACTOR, (err, salt) ->
    return next(err) if err

    bcrypt.hash user.password, salt, (err, hash) ->
      return next(err) if err

      user.password = hash
      next()

UserSchema.methods.comparePassword = (canidatePassword, cb) ->
  bcrypt.compare canidatePassword, this.password, (err, isMatch) ->
    return cb(err) if err
    cb null, isMatch

module.exports = mongoose.model 'User', UserSchema