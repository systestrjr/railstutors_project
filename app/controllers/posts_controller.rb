require File.expand_path(File.join(File.dirname(__FILE__), '..' , 'helpers' , 'posts_helper'))
include PostsHelper

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
    @post = Post.create(params[:post])

    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end
end
