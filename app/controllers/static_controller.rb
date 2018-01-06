class StaticController < ApplicationController
  before_action :require_token, only: [:mytrips]

  def index
    @users = User.all
    @trips = Trip.all
    @places = Place.all
    @posts = Post.all
  end

  def mytrips
  end

end
