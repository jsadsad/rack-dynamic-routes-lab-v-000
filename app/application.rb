class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request(env)
    
    if req.path 
      item_name
      
  end
end