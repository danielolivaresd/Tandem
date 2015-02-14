class User < ActiveRecord::Base
	has_many :user_languages
	has_many :languages, through: :user_languages
	has_many :language_interests
	#has_many :languages, through: :language_interests   This will make an inner join when using user.languages
	#has_many :matches
	
	def offers
		@user_languages = UserLanguage.where(user_id: self.id)
		offers = Offer.where(user_language: @user_languages)
	end

	def matches
		Match.where(user_id: self.id) +  Match.where(offer: self.offers)
	end
end
