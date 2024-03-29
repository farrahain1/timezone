class SecureApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :check_login
 
 include SessionsHelper
 
 private
 
  def check_login
      unless logged_in? && params[:action] != "home"
        flash[:danger] = 'You must logged in first!'
        redirect_to signin_path
      end
  end
end
