require 'test_helper'

class PlaceNamesControllerTest < ActionController::TestCase
  setup do
    @place_name = place_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_name" do
    assert_difference('PlaceName.count') do
      post :create, place_name: { name: @place_name.name }
    end

    assert_redirected_to place_name_path(assigns(:place_name))
  end

  test "should show place_name" do
    get :show, id: @place_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_name
    assert_response :success
  end

  test "should update place_name" do
    patch :update, id: @place_name, place_name: { name: @place_name.name }
    assert_redirected_to place_name_path(assigns(:place_name))
  end

  test "should destroy place_name" do
    assert_difference('PlaceName.count', -1) do
      delete :destroy, id: @place_name
    end

    assert_redirected_to place_names_path
  end
end
