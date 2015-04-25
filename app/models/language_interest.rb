class LanguageInterest < ActiveRecord::Base
	belongs_to :user
	belongs_to :language

  def self.for_user_languages (user_languages)
  	result = []
  	minimum_level = 7
  	user_languages.each do |ul|
  		user_language_language = ul.language
  		LanguageInterest.all.each do |li|
  			result.append li if li.language.id == user_language_language.id && ul.level >= minimum_level
  		end
  	end
  	result
  end
end
