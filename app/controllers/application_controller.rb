class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :get_user_name_from_id
  protect_from_forgery

  def current_user
    session[:user]
  end

  def logged_in?
    !!current_user
  end

  def require_user
     if !logged_in?
       redirect_to root_path, error: "You must be logged in"
     end
  end

  def get_user_name_from_id user_id
    comment_user = User.find_by_id(user_id.to_i)
    comment_user.name
  end
end
