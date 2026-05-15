class AuthController < ApplicationController
  def login
    redirect_to root_path if logged_in?
  end

  def registro
    redirect_to root_path if logged_in?
  end

  def create
    if params[:name].present?
      user = User.new(name: params[:name], email: params[:email], password: params[:password], plan: 'PRO')
      if user.save
        session[:user_id] = user.id
        redirect_to root_path, notice: 'Cuenta creada exitosamente'
      else
        flash.now[:alert] = user.errors.full_messages.to_sentence
        render params[:name].present? ? :registro : :login
      end
    else
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path, notice: 'Inicio de sesión exitoso'
      else
        flash.now[:alert] = 'Email o contraseña incorrectos'
        render :login
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Sesión cerrada'
  end
end
