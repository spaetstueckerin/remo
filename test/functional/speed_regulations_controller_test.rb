require 'test_helper'

class SpeedRegulationsControllerTest < ActionController::TestCase
  setup do
    @speed_regulation = speed_regulations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:speed_regulations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speed_regulation" do
    assert_difference('SpeedRegulation.count') do
      post :create, speed_regulation: { deliveryRate10: @speed_regulation.deliveryRate10, deliveryRate20: @speed_regulation.deliveryRate20, deliveryRate30: @speed_regulation.deliveryRate30, deliveryRate40: @speed_regulation.deliveryRate40, deliveryRate50: @speed_regulation.deliveryRate50, deliveryRate60: @speed_regulation.deliveryRate60, deliveryRate70: @speed_regulation.deliveryRate70, deliveryRate80: @speed_regulation.deliveryRate80, deliveryRate90: @speed_regulation.deliveryRate90, year_id: @speed_regulation.year_id }
    end

    assert_redirected_to speed_regulation_path(assigns(:speed_regulation))
  end

  test "should show speed_regulation" do
    get :show, id: @speed_regulation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speed_regulation
    assert_response :success
  end

  test "should update speed_regulation" do
    put :update, id: @speed_regulation, speed_regulation: { deliveryRate10: @speed_regulation.deliveryRate10, deliveryRate20: @speed_regulation.deliveryRate20, deliveryRate30: @speed_regulation.deliveryRate30, deliveryRate40: @speed_regulation.deliveryRate40, deliveryRate50: @speed_regulation.deliveryRate50, deliveryRate60: @speed_regulation.deliveryRate60, deliveryRate70: @speed_regulation.deliveryRate70, deliveryRate80: @speed_regulation.deliveryRate80, deliveryRate90: @speed_regulation.deliveryRate90, year_id: @speed_regulation.year_id }
    assert_redirected_to speed_regulation_path(assigns(:speed_regulation))
  end

  test "should destroy speed_regulation" do
    assert_difference('SpeedRegulation.count', -1) do
      delete :destroy, id: @speed_regulation
    end

    assert_redirected_to speed_regulations_path
  end
end
