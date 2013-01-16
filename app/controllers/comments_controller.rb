class CommentsController < ApplicationController
  before_filter :require_user, only: [:edit, :update, :destroy]

  def show
    #@post = Post.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])



    if @comment.save
      redirect_to post_path(@post) , notice: 'New comment was successfully saved'
    else
      render 'posts/show'
    end
  end



end
