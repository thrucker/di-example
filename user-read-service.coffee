{readService} = require './read-service'
UserModel = require './models/user-model'

userReadServiceFactory = (_readService = readService) ->
    service = {}

    service.getUser = (id) ->
        doc = _readService.getDocument id
        return new UserModel doc

    return service

module.exports =
    userReadService: userReadServiceFactory()
    userReadServiceFactory: userReadServiceFactory
