class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password
  has_secure_password

  has_many :comments
  has_many :posts
end
