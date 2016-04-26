class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def authentication_required
    if !logged_in?
      redirect_to login_path, :notice => "You must be logged in to access this site"
    end
  end

  def current_user
       @current_user ||= User.find(session[:user_id]) if session[:user_id]
     end
     helper_method :current_user

  def logged_in?
    session[:user_id]
  end

end
