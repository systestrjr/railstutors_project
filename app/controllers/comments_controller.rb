class CommentsController < ApplicationController
  def show
    #@post = Post.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    post = Post.find(params[:post_id])
    post.comments.create(params[:comment])

    if post.save
      redirect_to post_path(post)
    else
      flash[:alert] = "Your post could not be saved: " +
          post.errors.full_messages.to_sentence
      #render 'new'
      redirect_to post_path(post)
    end
  end
end
