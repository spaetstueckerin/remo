require 'test_helper'

class ColdDemandsControllerTest < ActionController::TestCase
  setup do
    @cold_demand = cold_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_demand" do
    assert_difference('ColdDemand.count') do
      post :create, cold_demand: { coldConsumptionYear_id: @cold_demand.coldConsumptionYear_id, demandDate: @cold_demand.demandDate, machinery_id: @cold_demand.machinery_id, timeFrom: @cold_demand.timeFrom, timeTo: @cold_demand.timeTo }
    end

    assert_redirected_to cold_demand_path(assigns(:cold_demand))
  end

  test "should show cold_demand" do
    get :show, id: @cold_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_demand
    assert_response :success
  end

  test "should update cold_demand" do
    put :update, id: @cold_demand, cold_demand: { coldConsumptionYear_id: @cold_demand.coldConsumptionYear_id, demandDate: @cold_demand.demandDate, machinery_id: @cold_demand.machinery_id, timeFrom: @cold_demand.timeFrom, timeTo: @cold_demand.timeTo }
    assert_redirected_to cold_demand_path(assigns(:cold_demand))
  end

  test "should destroy cold_demand" do
    assert_difference('ColdDemand.count', -1) do
      delete :destroy, id: @cold_demand
    end

    assert_redirected_to cold_demands_path
  end
end
