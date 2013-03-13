class Request
  REGEXP = /(?:(\w+)\:)?(?:(\d+)@)?(\/(?:[^?]|\\\?)*)(?:\?(.*))?/

  attr_reader :method, :time, :path, :body

  def initialize string
    params = string.scan REGEXP
    if params.empty?
      raise 'invalid request'
    else
      params = params[0]
      @method = params[0] || :get
      @time = params[1]
      @path = params[2]
      if body = params[3]
        @body = JSON.parse body
      end
    end
  end

end
