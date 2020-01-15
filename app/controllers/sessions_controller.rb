class SessionsController < ApplicationController

  def new
  end

  def home
    if logged_in?
      redirect_to obten_usuario
    end
  end

  def create
    usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if usuario && usuario.authenticate(params[:session][:password])
      log_in usuario
      redirect_to usuario
    else
      flash.now[:danger] = "Invalid email or password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to home_path
  end

end
