PoModel = require './models/po-model'

poReadServiceFactory = (_readService) ->
    service = {}

    service.getPo = (id) ->
        doc = _readService.getDocument id
        return new PoModel doc

    return service

poReadServiceFactory.$inject = ['read-service']

module.exports = poReadServiceFactory
