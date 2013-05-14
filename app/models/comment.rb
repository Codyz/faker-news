class Comment < ActiveRecord::Base
  attr_accessible :user_id, :body, :post_id, :comment_id

  belongs_to :post, :inverse_of => :comments
  belongs_to :user

  validates :body, :user_id, presence: true
end