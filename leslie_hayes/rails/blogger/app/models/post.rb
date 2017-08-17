class Post < ActiveRecord::Base
    validates :title,presence:true,length:{minimum:7}
    validates :content,length:{in:7..100}
    has_many :messages
end
