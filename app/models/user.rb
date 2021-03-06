class User < ActiveRecord::Base
  attr_accessible :name, :emails_attributes, :password, :password_confirmation

  has_many :emails, :inverse_of => :user
  accepts_nested_attributes_for :emails, :reject_if => :all_blank

  has_secure_password

  #validates :emails, numericality: {greater_than: 0}
  validates :password, :password_confirmation, presence: true, :on => :create
  validates :password, :password_confirmation, presence: true, :allow_nil => true, :on => :update

  has_many :posts
  has_many :comments

  validates :name, :uniqueness => true
end
