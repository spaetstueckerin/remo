require 'test_helper'

class ThermoOilDemandsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_demand = thermo_oil_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_demand" do
    assert_difference('ThermoOilDemand.count') do
      post :create, thermo_oil_demand: { demandDate: @thermo_oil_demand.demandDate, machinery_id: @thermo_oil_demand.machinery_id, thermoOilConsumptionYear_id: @thermo_oil_demand.thermoOilConsumptionYear_id, timeFrom: @thermo_oil_demand.timeFrom, timeTo: @thermo_oil_demand.timeTo, year_id: @thermo_oil_demand.year_id }
    end

    assert_redirected_to thermo_oil_demand_path(assigns(:thermo_oil_demand))
  end

  test "should show thermo_oil_demand" do
    get :show, id: @thermo_oil_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_demand
    assert_response :success
  end

  test "should update thermo_oil_demand" do
    put :update, id: @thermo_oil_demand, thermo_oil_demand: { demandDate: @thermo_oil_demand.demandDate, machinery_id: @thermo_oil_demand.machinery_id, thermoOilConsumptionYear_id: @thermo_oil_demand.thermoOilConsumptionYear_id, timeFrom: @thermo_oil_demand.timeFrom, timeTo: @thermo_oil_demand.timeTo, year_id: @thermo_oil_demand.year_id }
    assert_redirected_to thermo_oil_demand_path(assigns(:thermo_oil_demand))
  end

  test "should destroy thermo_oil_demand" do
    assert_difference('ThermoOilDemand.count', -1) do
      delete :destroy, id: @thermo_oil_demand
    end

    assert_redirected_to thermo_oil_demands_path
  end
end
