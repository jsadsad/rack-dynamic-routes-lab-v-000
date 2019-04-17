class Application
  
  @@items = [Item.new("Milk", 4.99), Item.new("Cheese", 4.11)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      
      if item=@@items.find(|i| i.name == item_name)
        resp.write item.price
      else
        resp.status = 400
        resp.write "Item not found."
      end
    else 
      resp.status = 404
      resp.write "Route not found."
    end
  end
end