{poReadService} = require './po-read-service'
{userReadService} = require './user-read-service'

userAndPoReadServiceFactory = (_userReadService = userReadService, _poReadService = poReadService) ->
    service = {}

    service.getUserAndPo = (userId, poId) ->
        user = _userReadService.getUser userId
        po = _poReadService.getPo poId

        return {user, po}

    return service

module.exports =
    userAndPoReadService: userAndPoReadServiceFactory()
    userAndPoReadServiceFactory: userAndPoReadServiceFactory
