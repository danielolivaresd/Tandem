class StaticController < ApplicationController
  def index
  	redirect_to user_languages_path if user_signed_in?
  end
end
