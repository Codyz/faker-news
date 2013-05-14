class Comment < ActiveRecord::Base
  attr_accessible :user_id, :body, :post_id, :comment_id

  belongs_to :post, :inverse_of => :post

  validates :body, :user_id, :post_id, presence: true
end