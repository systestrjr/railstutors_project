class User < ActiveRecord::Base
  attr_accessible :name

  has_many :comments
  has_many :posts
end
