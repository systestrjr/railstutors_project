class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    #@comment = @post.comments.new
    @comment = Comment.new
    #redirect_to post_comments_path
  end

  def new
    @post = Post.new
  end

  def create
    #@post = Post.new(params[:post])
    #@post.save
    Post.create(params[:post])
    redirect_to posts_path
  end
end
