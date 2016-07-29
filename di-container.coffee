container = new DiContainer()

container.register require('couchbase'), 'bucket'
container.register require('./read-service'), 'read-service'
container.register require('./po-read-service'), 'po-read-service'
container.register require('./user-read-service'), 'user-read-service'
container.register require('./user-and-po-read-service'), 'user-and-po-read-service'

module.exports = container
