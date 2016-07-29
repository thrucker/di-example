UserModel = require 'user-model'

poReadServiceFactory = (_readService = readService) ->
    service = {}

    service.getUser = (id) ->
        doc = _readService.getDocument id
        return new UserModel doc

    return service

poReadServiceFactory.$inject = ['read-service']

module.exports = poReadServiceFactory
