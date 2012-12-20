class CommentsController < ApplicationController
  def show
    #@post = Post.find(params[:id])
  end

  def new
    #@post = Post.new
  end

  def create
    post = Post.find(params[:post_id])
    post.comments.create(params[:comment])

    redirect_to post_path(post)
  end
end
