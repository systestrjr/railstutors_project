class Post < ActiveRecord::Base
  attr_accessible :url, :title, :user_id

  validates :title, presence: true
  validates :url, presence: true

  belongs_to :user
  has_many :comments
  has_many :votes

  def vote_number
    votes.where(vote_indicator: "up").count - votes.where(vote_indicator: "down").count
  end

end
