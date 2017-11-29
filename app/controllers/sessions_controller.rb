class SessionsController < ApplicationController
  def new

  end

  def create
      user = User.find_by(username: params[:session][:username])
      if user && user.authenticate(params[:session][:password])
        # git. logujemy.
        log_in user
        redirect_to user
      else
        render 'new'
        # nie działa.
      end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
end
