class User < ActiveRecord::Base
  # This is the line of code that gives our User model authentication methods via bcrypt
  has_secure_password
  validates :email, presence: true
end
