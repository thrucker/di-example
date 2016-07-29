{poReadService} = require './po-read-service'
{userReadService} = require './user-read-service'

userAndPoReadServiceFactory = (_userReadService, _poReadService) ->
    service = {}

    service.getUserAndPo = (userId, poId) ->
        user = _userReadService.getUser userId
        po = _poReadService.getPo poId

        return {user, po}

    return service

userAndPoReadServiceFactory.$inject = ['user-read-service', 'po-read-service']

module.exports = userAndPoReadServiceFactory
