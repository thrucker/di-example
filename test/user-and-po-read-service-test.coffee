InMemBucket = require '../db/in-mem-bucket'
{expect} = require 'chai'

describe 'UserAndPoReadService', ->
    userAndPoReadService = null
    bucket = null

    beforeEach ->
        bucket = new InMemBucket()

        UserAndPoReadService = require '../user-and-po-read-service'

        userAndPoReadService = UserAndPoReadService {bucket}

    it 'should return user and po', ->
        bucket.set 'userid', {name: 'foo', type: 'user'}
        bucket.set 'poid', {name: 'bar', type: 'po'}

        {user, po} = userAndPoReadService.getUserAndPo 'userid', 'poid'

        expect(user.name()).to.equal 'foo'
        expect(po.name()).to.equal 'bar'

describe 'PoReadService', ->
    poReadService = null
    bucket = null

    beforeEach ->
        bucket = new InMemBucket()

        PoReadService = require '../po-read-service'
        poReadService = PoReadService {bucket}

    it 'should return a PO', ->
        bucket.set 'poid', {name: 'bar', type: 'po'}

        po = poReadService.getPo 'poid'

        expect(po.name()).to.equal 'bar'

describe 'UserReadService', ->
    userReadService = null
    bucket = null

    beforeEach ->
        bucket = new InMemBucket()

        UserReadService = require '../user-read-service'
        userReadService = UserReadService {bucket}

    it 'should return a PO', ->
        bucket.set 'userid', {name: 'foo', type: 'user'}

        user = userReadService.getUser 'userid'

        expect(user.name()).to.equal 'foo'
