class Message < ActiveRecord::Base
    validates :author,presence:true,length:{in:7..30}
    validates :message,length:{in:15..100}
    belongs_to :post
end
