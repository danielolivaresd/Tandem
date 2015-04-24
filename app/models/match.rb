class Match < ActiveRecord::Base
	has_many :match_users, dependent: :destroy
	has_many :users, through: :match_users
	has_many :match_languages, dependent: :destroy
	has_many :languages, through: :match_languages

	def self.possible_for(user)
		user_language_interests = user.language_interests
		uls_for_user_li = UserLanguage.for_language_interests user_language_interests
		result = []
		uls_for_user_li.each do |ul|
			possible_user = ul.user
			possible_user_language_interests = possible_user.language_interests
			uls_for_pu = UserLanguage.for_language_interests possible_user_language_interests
			uls_for_pu.each do |ulpu|
				if ulpu.user == user
					thehash = {:other_user_language => ul, :user_language => ulpu}
					result.append thehash
				end
			end
		end
		result
	end

end
