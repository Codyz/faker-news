class User < ActiveRecord::Base
  attr_accessible :name, :emails_attributes, :password, :password_confirmation

  has_many :emails, :inverse_of => :user
  accepts_nested_attributes_for :emails, :reject_if => :all_blank

  has_secure_password

  validates :password, :password_confirmation, presence: true
end