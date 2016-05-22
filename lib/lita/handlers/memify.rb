module Lita
  module Handlers
    class Memify < Handler
      route(/^hello/, :do_something, help: {"hello" => "Says hello back"})
           
     def do_something(response)
     	response.reply ("Hello there")
     end
      Lita.register_handler(self)
    end

  end
end
