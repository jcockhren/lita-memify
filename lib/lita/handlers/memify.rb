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
        rick = ""
        response.body["data"]["memes"].each do |meme|
        rick = "a" + rick
        end

      	message.reply "This is an excellent reply ->#{response.body['data']}<-"
      end


      Lita.register_handler(self)
    end

  end
end
