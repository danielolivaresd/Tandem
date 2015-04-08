class Match < ActiveRecord::Base
	has_many :match_users
	has_many :users, through: :match_users
	has_many :match_languages
	has_many :languages, through: :match_languages
end
