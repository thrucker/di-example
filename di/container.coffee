container = require('intravenous').create()

container.register 'bucket', require('../db/bucket'), 'singleton'
container.register 'read-service', require('../read-service'), 'singleton'
container.register 'po-read-service', require('../po-read-service'), 'singleton'
container.register 'user-read-service', require('../user-read-service'), 'singleton'
container.register 'user-and-po-read-service', require('../user-and-po-read-service'), 'singleton'

module.exports = container
