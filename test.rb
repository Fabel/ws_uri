require './request'
require './json_request'

d = Time.now
dd = d.to_i
s = %{{"time": #{dd}, "uri": "/ololo", "body": {"lalala": 123}}}
i = 100000
while i > 0
  i -= 1
  JSONRequest.new s
end
p Time.now - d

d = Time.now
s = %{#{dd}@/ololo?{"lalala": 123}}
i = 100000
while i > 0
  i -= 1
  Request.new s
end
p Time.now - d
