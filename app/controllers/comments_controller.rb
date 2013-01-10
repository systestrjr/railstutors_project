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



  #-----------------------
  #
  #def create
  #  @comment = Comment.new(params[:comment])
  #  @comment.post = Post.where(slug: params[:post_id]).first
  #  if @comment.save
  #    redirect_to @comment.post, notice: 'New comment was succesfully saved'
  #  else
  #    @post = @comment.post
  #    render 'posts/show'
  #  end
  #end


end
