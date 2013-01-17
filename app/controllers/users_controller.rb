class UsersController < ApplicationController

  def new
    @user = User.new
  end


  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to login_path, notice: 'User was created successfully - please log in'
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

end
