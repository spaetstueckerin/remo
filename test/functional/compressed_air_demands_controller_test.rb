require 'test_helper'

class CompressedAirDemandsControllerTest < ActionController::TestCase
  setup do
    @compressed_air_demand = compressed_air_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_demand" do
    assert_difference('CompressedAirDemand.count') do
      post :create, compressed_air_demand: { timeFrom: @compressed_air_demand.timeFrom, timeTo: @compressed_air_demand.timeTo }
    end

    assert_redirected_to compressed_air_demand_path(assigns(:compressed_air_demand))
  end

  test "should show compressed_air_demand" do
    get :show, id: @compressed_air_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_demand
    assert_response :success
  end

  test "should update compressed_air_demand" do
    put :update, id: @compressed_air_demand, compressed_air_demand: { timeFrom: @compressed_air_demand.timeFrom, timeTo: @compressed_air_demand.timeTo }
    assert_redirected_to compressed_air_demand_path(assigns(:compressed_air_demand))
  end

  test "should destroy compressed_air_demand" do
    assert_difference('CompressedAirDemand.count', -1) do
      delete :destroy, id: @compressed_air_demand
    end

    assert_redirected_to compressed_air_demands_path
  end
end
