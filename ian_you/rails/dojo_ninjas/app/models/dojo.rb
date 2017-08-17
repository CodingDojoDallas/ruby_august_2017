class Dojo < ActiveRecord::Base
    has_many :ninjas, dependent: :destroy

    validates :name, :city, presence: true, length: { maximum: 255 }
    validates :state ,presence: true, length: { maximum: 2 }
end
