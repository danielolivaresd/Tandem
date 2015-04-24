class MatchUser < ActiveRecord::Base
  belongs_to :match
  belongs_to :user

  scope :by_user, ->(userarg) {where(user: userarg)}
end
