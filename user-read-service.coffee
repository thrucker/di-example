stampit = require 'stampit'
ReadService = require './read-service'
UserModel = require './models/user-model'

UserReadService = stampit
    methods:
        getUser: (id) ->
            doc = @getDocument id
            return new UserModel doc
.compose ReadService

module.exports = UserReadService
