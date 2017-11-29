class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


  def index
    @some_variable = "okej ziom."

    @users = User.all
    @trips = Trip.all

  end
end
