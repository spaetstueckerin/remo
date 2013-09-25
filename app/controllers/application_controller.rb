class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  
  def user_signed_in?
    current_user.present?
  end
  
  def role?
    current_user.role_id?
  end
  
  def require_login
    unless user_signed_in?
      redirect_to login_path, alert: "Bitte melden Sie sich an!"
    end
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Kein Zugriff!"
    redirect_to "/welcome/index"
  end
  
end
