var Request = function (string) {
  var params = JSON.parse(string)
  this.method = params.method || 'get'
  this.time = params.time
  this.path = params.path
  this.body = params.body
}

module.exports = Request
