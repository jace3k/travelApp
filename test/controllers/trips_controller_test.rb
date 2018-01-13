require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @current_user = users(:one)
    @trip = trips(:one)
    @trip.users.append(@current_user)
    @current_user.trips.append(@trip)

  end

  test "should get new" do
    get :new
    assert_response :success
  end

#  test "should create trip" do
#    assert_difference('Trip.count') do
#
#      post :create, trip: { end_date: @trip.end_date, start_date: @trip.start_date, name: @trip.name }
#    end
#  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    patch :update, id: @trip, trip: { end_date: @trip.end_date, start_date: @trip.start_date, name: @trip.name}
    assert_redirected_to trip_path(assigns(:trip))
  end

#  test "should destroy trip" do
#    assert_difference('current_user.trips.count', -1) do
#      delete :destroy, id: @trip
#    end
#  end

end
