var Request = require('./request'), JSONRequest = require('./json_request')

var d = new Date
var dd = d - 0
var s = '{"time": ' + dd + ', "uri": "/ololo", "body": {"lalala": 123}}'
for (var i = 1000000; i--;)
  new JSONRequest(s)
console.log(new Date - d)

d = new Date
s = dd + '@/ololo?{"lalala": 123}'
for (var i = 1000000; i--;)
  new Request(s)
console.log(new Date - d)
