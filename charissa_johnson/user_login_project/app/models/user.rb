class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: {in: 2..20}
	validates :email_address, presence: true, uniqueness: { case_sensitve: false }, format: { with: EMAIL_REGEX }
	validates :age, presence: true, numericality: { greater_than: 10, less_than: 150}

end