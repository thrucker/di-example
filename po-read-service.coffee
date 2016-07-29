{readService} = require './read-service'
PoModel = require 'po-model'

poReadServiceFactory = (_readService = readService) ->
    service = {}

    service.getPo = (id) ->
        doc = _readService.getDocument id
        return new PoModel doc

    return service

module.exports =
    poReadService: poReadServiceFactory()
    poReadServiceFactory: poReadServiceFactory
