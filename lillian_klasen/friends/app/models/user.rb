class User < ActiveRecord::Base
    has_many :friendships, class_name: "Friendship", foreign_key: "user_id"

    has_many :friends, through: :friendships
end
