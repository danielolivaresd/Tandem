class UserLanguage < ActiveRecord::Base
	belongs_to :user
	belongs_to :language

  # scope :possible_for, ->(user)

  def self.possible (user, native=false)
  	result = []
  	user.language_interests.each do |language|
  		actual_language = Language.find(language.language_id)
  		if native == false
  			all.each do |user_language|
  				actual_user_language = Language.find(user_language.language_id)
  				result.append user_language if actual_user_language == actual_language
  			end
  		elsif native == true
  			all.where(is_native: true).each do |user_language|
  				actual_user_language = Language.find(user_language.language_id)
  				result.append user_language if actual_user_language == actual_language
  			end
  		end
  	end
  	result
  end

end
