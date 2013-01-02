class VotesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.votes.create(vote_indicator: params[:vote_indicator])
    redirect_to posts_path
  end
end
