{readService} = require './read-service'
UserModel = require 'user-model'

poReadServiceFactory = (_readService = readService) ->
    service = {}

    service.getUser = (id) ->
        doc = _readService.getDocument id
        return new UserModel doc

    return service

module.exports =
    userReadService: userReadServiceFactory()
    userReadServiceFactory: userReadServiceFactory
