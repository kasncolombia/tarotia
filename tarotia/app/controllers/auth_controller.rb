class AuthController < ApplicationController
  def login
    redirect_to root_path if logged_in?
  end

  def registro
    redirect_to root_path if logged_in?
  end

  def create
    session[:user_id] = 1
    redirect_to root_path, notice: 'Inicio de sesión exitoso'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Sesión cerrada'
  end
end
