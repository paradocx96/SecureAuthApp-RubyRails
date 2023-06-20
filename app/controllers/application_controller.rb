class ApplicationController < ActionController::Base
  helper_method :current_user, :authorized?, :current_user_info

  def current_user
    @current_user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authorized?
    !!current_user
  end

  def require_auth
    redirect_to sign_in_path, alert: 'Please Signed in!' unless authorized?
  end
end
