class Post < ActiveRecord::Base
  attr_accessible :url, :title, :user_id, :comments_attributes

  has_many :comments, :inverse_of => :post
  accepts_nested_attributes_for :comments, :reject_if => :all_blank

  belongs_to :user
end