class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

 
  def self.authenticate_with_credentials(email, password)
    user = find_by_email(email.strip.downcase)
    user && user.authenticate(password)
  end
end
