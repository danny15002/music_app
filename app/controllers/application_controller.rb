class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    user = User.find_by(session_token: session[:session_token])
    if user
      user
    else
      nil
    end
  end

  def log_in!(user)
    session[:session_token] = user.session_token
  end

  def logged_in?
    !session[:session_token].nil?
  end

  def log_out!
    current_user.session_token = User.generate_session_token # how to do this in one line?
    current_user.save!
    session[:session_token] = nil
  end
end
