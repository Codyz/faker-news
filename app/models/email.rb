class Email < ActiveRecord::Base
  attr_accessible :user_id, :email

  belongs_to :user, :inverse_of => :emails

  before_save { |user| user.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, :uniqueness => { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
end