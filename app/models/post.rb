class Post < ActiveRecord::Base
  attr_accessible :url, :title, :user_id

  belongs_to :user
  has_many :comments
end
