class Application
  
  @@items = [Item.new("Milk", 4.99), Item.new("Cheese", 4.11)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      
      if item=@@items.find(|i| i == item_name)
        resp.write item.price
      else
        resp.status = 400
        resp.write
      end
    end
      
  end
end