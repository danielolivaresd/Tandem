class Language < ActiveRecord::Base
	has_many :user_languages
	has_many :users, through: :user_languages
	has_many :language_interests
	has_many :users, through: :language_interests
end
