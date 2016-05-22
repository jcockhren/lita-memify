module Lita
  module Handlers
    class Memify < Handler
      route(/^hello/, :do_something, help: {"hello" => "Says hello back"})
      route(/^get random meme/, :get_random_meme, help: {"get random meme" => "finds random meme"})

      def do_something(response)
     	  response.reply ("Hello there")
      end

      def get_random_meme(response)
      end


      Lita.register_handler(self)
    end

  end
end
