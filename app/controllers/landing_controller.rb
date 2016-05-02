class LandingController < ApplicationController
	before_action :clean_params, only: [:tweet]
	def index
	end

	def tweet
		tweeter_bot = TwitterBot.new
		tweeter_bot.tweet(params[:message])

		redirect_to root_path
	end

	def feed
		twitter_bot = TwitterBot.new
		@home_timeline = twitter_bot.home_timeline
	end


	private

	def clean_params
		params.permit(:message)
	end
end
