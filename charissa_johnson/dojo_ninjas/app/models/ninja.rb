class Ninja < ActiveRecord::Base
  belongs_to :dojo

  validates :first_name, presence: true
end
