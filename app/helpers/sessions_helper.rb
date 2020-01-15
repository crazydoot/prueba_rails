module SessionsHelper
  def log_in(usuario)
    session[:usuario_id] = usuario.id
  end

  def log_out
    session.delete(:usuario_id)
    @curr_usuario = nil
  end

  def obten_usuario
    if session[:usuario_id]
      @curr_usuario ||= Usuario.find_by(id: session[:usuario_id])
    end
  end

  def logged_in?
    !obten_usuario.nil?
  end


end
