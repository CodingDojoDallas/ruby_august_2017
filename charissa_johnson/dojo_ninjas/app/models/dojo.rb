class Dojo < ActiveRecord::Base
	has_many :ninjas

	validates :first_name, :city, :state, presence: true
	validates :city, length: { in: 2..50 }
end
