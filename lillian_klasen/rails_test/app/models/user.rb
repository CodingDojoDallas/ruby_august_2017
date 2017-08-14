class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true
    validates :email, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end
