stampit = require 'stampit'
PoReadService = require './po-read-service'
UserReadService = require './user-read-service'

UserAndPoReadService = stampit
    methods:
        getUserAndPo: (userId, poId) ->
            user = @getUser userId
            po = @getPo poId

            return {user, po}
.compose PoReadService, UserReadService

module.exports = UserAndPoReadService
