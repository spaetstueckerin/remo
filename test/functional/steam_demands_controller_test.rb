require 'test_helper'

class SteamDemandsControllerTest < ActionController::TestCase
  setup do
    @steam_demand = steam_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_demand" do
    assert_difference('SteamDemand.count') do
      post :create, steam_demand: { demandDate: @steam_demand.demandDate, steamConsumption_id: @steam_demand.steamConsumption_id, timeFrom: @steam_demand.timeFrom, timeTo: @steam_demand.timeTo, year_id: @steam_demand.year_id }
    end

    assert_redirected_to steam_demand_path(assigns(:steam_demand))
  end

  test "should show steam_demand" do
    get :show, id: @steam_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_demand
    assert_response :success
  end

  test "should update steam_demand" do
    put :update, id: @steam_demand, steam_demand: { demandDate: @steam_demand.demandDate, steamConsumption_id: @steam_demand.steamConsumption_id, timeFrom: @steam_demand.timeFrom, timeTo: @steam_demand.timeTo, year_id: @steam_demand.year_id }
    assert_redirected_to steam_demand_path(assigns(:steam_demand))
  end

  test "should destroy steam_demand" do
    assert_difference('SteamDemand.count', -1) do
      delete :destroy, id: @steam_demand
    end

    assert_redirected_to steam_demands_path
  end
end
