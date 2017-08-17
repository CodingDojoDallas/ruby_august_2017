class Blog < ActiveRecord::Base
    validates :name,presence:true,length:{in:1..30}
    validates :description,presence:true,length{in:1..100}
    has_many :posts
end
