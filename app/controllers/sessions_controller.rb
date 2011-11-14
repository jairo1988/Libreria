class SessionsController < ApplicationController
  def new
  end

  def create
    cuenta = Cuenta.authenticate(params[:email], params[:password])
    if cuenta
      session[:cuenta_id] = cuenta.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  def destroy
    session[:cuenta_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
