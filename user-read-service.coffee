UserModel = require './models/user-model'

userReadServiceFactory = (_readService) ->
    service = {}

    service.getUser = (id) ->
        doc = _readService.getDocument id
        return new UserModel doc

    return service

userReadServiceFactory.$inject = ['read-service']

module.exports = userReadServiceFactory
