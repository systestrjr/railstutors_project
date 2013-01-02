class Vote < ActiveRecord::Base
  attr_accessible :vote_indicator

  belongs_to :posts
end
