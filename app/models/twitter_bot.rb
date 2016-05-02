class TwitterBot

	attr_reader :client

	def initialize	
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "TWITTER_CONSUMER_KEY"
		  config.consumer_secret     = "TWITTER_CONSUMER_SECRET"
		  config.access_token        = "SECRET_TOKEN"
		  config.access_token_secret = "access_token_secret"
		end
	end

	def tweet(message)
		@client.update(message)
	end

	def home_timeline
		@client.home_timeline
	end

end
