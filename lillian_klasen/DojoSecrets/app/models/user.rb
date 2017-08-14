class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, :password, length: { minimum: 2 }

  validates :email, uniqueness: true

  before_save { |user| user.email = user.email.downcase }

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  # validates_presence_of :password_confirmation, if: :password_digest_changed?
end
