class User < ActiveRecord::Base
    has_many :messages
    has_many :posts

    validates :email, presence: true, length: { minimum: 5 }, uniqueness: true
end
