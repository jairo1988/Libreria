module SessionsHelper

  def sign_in(cuenta)
    cookies.permanent.signed[:remember_token] = [cuenta.id, cuenta.salt]
    self.current_cuenta = cuenta
  end

  def sign_out
    cookies.delete(:remember_token)
    self.current_cuenta=nil
  end

  def current_cuenta?(cuenta)
    cuenta == current_cuenta
  end

  def current_cuenta=(cuenta)
    cuenta==current_cuenta
  end
  def signed_in?
    !current_cuenta.nil?
  end

  def current_cuenta
    @current_cuenta ||= cuenta_from_remember_token
  end

  def signed_in?
    !current_cuenta.nil?
  end
  def destroy
    sign_out
    redirect_to root_path
  end
  def authenticate
    deny_access unless signed_in?
  end
  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end
  private
  def user_from_remember_token
    Cuenta.authenticate_with_salt(*remember_token)
  end
  def remember_token
    cookies.signed[:remember_token] || [nil,nil]
  end
  def store_location
      session[:return_to] = request.fullpath
    end

    def clear_return_to
      session[:return_to] = nil
    end
end

