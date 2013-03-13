var Request = function (string) {
  var params = Request.regexp.exec(string)
  if (params) {
    this.method = params[1] || 'get'
    this.time = params[2]
    this.path = params[3]
    if (params[4])
      this.body = JSON.parse(params[4])
  } else
    throw 'invalid request'
}

Request.regexp = /(?:(\w+)\:)?(?:(\d+)@)?(\/(?:[^?]|\\\?)*)(?:\?(.*))?/

module.exports = Request
