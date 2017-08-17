class Message < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments, as: :commentable
  validates :author, :message, presence: true
  validates :message, length: { in: 15..150 }
end
