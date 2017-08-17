class Friendship < ActiveRecord::Base
	 belongs_to :user, :foreign_key => "user", :class_name => "User"
  belongs_to :friend, :foreign_key => "friend", :class_name => "User"
end
