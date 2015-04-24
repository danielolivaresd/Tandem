class StaticController < ApplicationController
	before_action :set_user
	before_action :authenticate_user!
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

	def get_match(match_user)
		match_user.match
	end

	def get_other_user(match)
		match.match_users.where(match: match).not(user: @user).first.user
	end

	def get_teacher_language(match)
		match.match_language.where(match: match, teacher: @user).language
	end

	def get_student_language(match)
		match.match_language.where(match: match, student: @user).language
	end
end
