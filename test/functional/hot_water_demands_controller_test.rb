require 'test_helper'

class HotWaterDemandsControllerTest < ActionController::TestCase
  setup do
    @hot_water_demand = hot_water_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_demand" do
    assert_difference('HotWaterDemand.count') do
      post :create, hot_water_demand: { demandDate: @hot_water_demand.demandDate, hotWaterConsumption_id: @hot_water_demand.hotWaterConsumption_id, time_from: @hot_water_demand.time_from, time_to: @hot_water_demand.time_to, year_id: @hot_water_demand.year_id }
    end

    assert_redirected_to hot_water_demand_path(assigns(:hot_water_demand))
  end

  test "should show hot_water_demand" do
    get :show, id: @hot_water_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_demand
    assert_response :success
  end

  test "should update hot_water_demand" do
    put :update, id: @hot_water_demand, hot_water_demand: { demandDate: @hot_water_demand.demandDate, hotWaterConsumption_id: @hot_water_demand.hotWaterConsumption_id, time_from: @hot_water_demand.time_from, time_to: @hot_water_demand.time_to, year_id: @hot_water_demand.year_id }
    assert_redirected_to hot_water_demand_path(assigns(:hot_water_demand))
  end

  test "should destroy hot_water_demand" do
    assert_difference('HotWaterDemand.count', -1) do
      delete :destroy, id: @hot_water_demand
    end

    assert_redirected_to hot_water_demands_path
  end
end
