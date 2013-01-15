class CommentsController < ApplicationController
  def show
    #@post = Post.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])


    if @comment.save
      #redirect_to posts_path , notice: 'New comment was successfully saved'
      redirect_to post_path(@post) , notice: 'New comment was successfully saved'
    else
      @post = Post.find(params[:post_id])
      render 'posts/show'
    end
  end



end
