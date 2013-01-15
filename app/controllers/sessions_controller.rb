class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_name(params[:name])

    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to root_path, notice: "You have been logged in '#{user.name.capitalize}'"
    else
      flash[:error] = "Could not log in user"
      render 'new'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path, notice: "You have been logged out"
  end
end
