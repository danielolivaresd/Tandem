class Offer < ActiveRecord::Base
  belongs_to :user_language #User can be implied from UserLanguage
end
