class PublicController < ApplicationController

	def index

		@data_twitter 	= twitter.search("#railsindonesia")
  	
  	end

  	def search 

  		hastag 			= params[:search].gsub("#", "")
		@data_twitter 	= twitter.search("#"+hastag)
  		render :controller => 'public', :action => 'index'

  	end

  	private 
  		def twitter
  			twitter 	= Twitter::REST::Client.new do |config|
				config.consumer_key        = "iH99oQCPfL1ppjxeMKEiY8Kd6"
				config.consumer_secret     = "beNgPuz8WBTUBBQRPKgo8crpXQQFWzqZybW5XzkTuqgOdCci3W"
				config.access_token        = "372854567-Az4oXt1RbCCqJ3rdEYtC3vlODJ2BM97vZfH7p7Wm"
				config.access_token_secret = "jNj33HI3DjbASJVhVTbIieAQoYHigHohtsJugdePTkcgZ"
			end
  		end
end