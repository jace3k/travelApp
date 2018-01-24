require 'rails_helper'

module RequestHelper
  def self.prepare_requests
    Trip.all.destroy_all
    User.all.destroy_all
    Post.all.destroy_all
    Review.all.destroy_all


    user = User.new(
      username: "test123",
      password: "test",
      name: "Jan",
      last_name: "Kowalski"
    )
    user.save!
    user.regenerate_token
    user.reload

    trip = Trip.new(
      name: "testowa podroz",
      start_date: "10/01/2018",
      end_date: "12/01/2018",
      user_id: 1,
    )
    trip.save!
    
  end
end
