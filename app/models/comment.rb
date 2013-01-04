class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id , :post_id

  validates :body, presence: true

  belongs_to :user
  belongs_to :post
end
