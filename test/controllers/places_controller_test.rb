require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end


  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { coords: @place.coords, description: @place.description, name: @place.name, type_id: @place.type_id, town_id: @place.town_id }
    end

    assert_redirected_to place_path(assigns(:place))
  end

#  test "should show place" do
#    get :show, id: @place
#    assert_response :success
#  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { coords: @place.coords, description: @place.description, name: @place.name, type_id: @place.type_id, town_id: @place.town_id }
    assert_redirected_to place_path(assigns(:place))
  end

end
