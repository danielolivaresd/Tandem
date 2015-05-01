class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { thumb: "100x100#", medium: "400x400#" }, :default_url => "/img/user-default.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :user_languages
  has_many :languages, through: :user_languages
  has_many :language_interests
  has_many :match_users
  has_many :matches, through: :match_users

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :country, presence: true
  validates :state, presence: true
  validates :city, presence: true
  validates :sex, presence: true
  validates :skype_username, presence: true

end
