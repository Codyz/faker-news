class Post < ActiveRecord::Base
  attr_accessible :url, :title, :user_id, :comments_attributes

  has_many :comments
  accepts_nested_attributes_for :comments, :inverse_of => :post

  belongs_to :user
end