module Lita
  module Handlers
    class Memify < Handler
      route(/^hello/, :do_something, help: {"hello" => "Says hello back"})
      route(/^get random meme/, :get_random_meme, help: {"get random meme" => "finds random meme"})

      def do_something(response)
     	  response.reply ("Hello there")
      end

      def get_random_meme(message)
      	response = http.get("https://api.imgflip.com/get_memes")
      	message.reply "This is an excellent reply ->#{response.body}<-"
      end


      Lita.register_handler(self)
    end

  end
end
