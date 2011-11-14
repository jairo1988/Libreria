class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_cuenta

  private
  def current_cuenta
    @current_cuenta ||= Cuenta.find(session[:cuenta_id]) if session[:cuenta_id]
  end
end
