class User < ApplicationRecord
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, :email, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  
  
end
