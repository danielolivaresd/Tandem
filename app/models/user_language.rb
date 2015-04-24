class UserLanguage < ActiveRecord::Base
	belongs_to :user
	belongs_to :language

  def self.for_language_interests (language_interests)
    result = []
    minimum_level = 7
    language_interests.each do |li|
      language_interest_language = li.language
      UserLanguage.all.each do |ul|
        result.append ul if ul.language.id == language_interest_language.id && ul.level >= minimum_level
      end
    end
    result
  end

end
