require File.expand_path(File.join(File.dirname(__FILE__), '..' , 'helpers' , 'posts_helper'))
include PostsHelper

class PostsController < ApplicationController
  before_filter :require_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    #@user = @comment.user_id
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to posts_path, notice: 'Post was created successfully'
    else
      render 'new'
    end
  end
end
