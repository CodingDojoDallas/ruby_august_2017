class User < ActiveRecord::Base
  has_secure_password
  has_many :secrets
  has_many :likes, dependent: :destroy
  has_many :secrets_liked, through: :likes, source: :secret
  validates :name, :password, presence: true
  validates :password, :confirmation => true
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :email, presence: true, uniqueness: { case_sensitve: false }, format: { with: EMAIL_REGEX }
  before_save :downcase_fields

  def downcase_fields
  	self.email.downcase!
  end
end
