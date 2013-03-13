require 'json'

class JSONRequest
  attr_reader :method, :time, :path, :body

  def initialize string
    params = ::JSON.parse string
    @method = params['method'] || :get
    @time = params['time']
    @path = params['path']
    @body = params['body']
  end

end
