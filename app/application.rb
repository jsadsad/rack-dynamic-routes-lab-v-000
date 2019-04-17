class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request(env)
    
    if req.path=="/items"
      
  end
end