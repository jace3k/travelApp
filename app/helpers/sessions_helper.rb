module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def require_token
    respond_to do |format|
      format.json {
        authenticate_token || render_unauthorized("Brak dostępu")
      }
      format.html {}
    end
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      @current_user ||= User.find_by(token: token)
    end
  end

  def render_unauthorized(message)
    errors = { message: message}
    render json: errors, status: :unauthorized
  end

  def send_notify(msg, trip_id, user)
    require 'gcm'
    gcm = GCM.new("AAAADP0UKRs:APA91bFeG87puelWDsgqoEnnTP_dDsm8ZBK54dlE7YjAyZL0maeB8MMgeTRQdgKKz0ECSqXS6eq4tUiCOW1AeCgOaA06iBlcpf86GQ5cthnAUWUxs9aBEXtBKzT6O0PSqF-m8at7aEcy")

    registration_ids= [user.device_id] # an array of one or more client registration tokens
    options = { data: { msg: msg, trip_id: trip_id } }
    response = gcm.send(registration_ids, options)
  end

end
