class StaticController < ApplicationController
	before_action :set_user
	before_action :set_all_languages

	def index
		redirect_to "/profile" if user_signed_in?
	end

	def profile
		@matches = MatchUser.by_user @user #Get match by calling |match|.match.
	end

private
	def set_user
		@user = current_user
	end

	def set_all_languages
		@all_languages = Language.all
	end
end
