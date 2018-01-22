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

  def send_notify
    @uksz_device = "fOEzufxHvlo:APA91bFTwpvSpMesDZUc-Y_G27vV7zRZc-9KLaARDWcyIC1OdmlFGwlgv2sjLFngAle4Tvkc_k_uEHOqcO89-ijvhvGm9JP7rSuU1mmDmQOEt7ZZNygRBIigHqladfKvxlYLDRbaDH0u"
    require 'gcm'

    gcm = GCM.new("AAAADP0UKRs:APA91bHozrt9kWLI8n21kuv5sPSoiGGV5jsp0lSWGkkg8M4K6yNk4EXP0TxYxdkCj4oTPYTMTSjn3BNj0InRm3n7UEWFxVQuk7oLMmtWgi3dQMkvSoPdJZSzrX5Bkd1JqQEiTgWHNmnI")


    registration_ids= [current_user.device_id] # an array of one or more client registration tokens
    options = { data: { msg: 'Zostałeś dodany do wyjazdu!', trip_id: '3' } }
    response = gcm.send(registration_ids, options)
    if response
      render json: {
        message: response
      }
    else
      render json: {
        message: 'error'
      }
    end
  end




end
