class Dojo < ActiveRecord::Base
  validates :name, :street, :city, :state, presence: true
end
