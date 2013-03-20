require 'test_helper'

class ThermoOilConsumptionsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_consumption = thermo_oil_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_consumption" do
    assert_difference('ThermoOilConsumption.count') do
      post :create, thermo_oil_consumption: { machinery_id: @thermo_oil_consumption.machinery_id, profitCapacity: @thermo_oil_consumption.profitCapacity, requirementType: @thermo_oil_consumption.requirementType, thermoOilDistribution_id: @thermo_oil_consumption.thermoOilDistribution_id, thermoOilProduction_id: @thermo_oil_consumption.thermoOilProduction_id }
    end

    assert_redirected_to thermo_oil_consumption_path(assigns(:thermo_oil_consumption))
  end

  test "should show thermo_oil_consumption" do
    get :show, id: @thermo_oil_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_consumption
    assert_response :success
  end

  test "should update thermo_oil_consumption" do
    put :update, id: @thermo_oil_consumption, thermo_oil_consumption: { machinery_id: @thermo_oil_consumption.machinery_id, profitCapacity: @thermo_oil_consumption.profitCapacity, requirementType: @thermo_oil_consumption.requirementType, thermoOilDistribution_id: @thermo_oil_consumption.thermoOilDistribution_id, thermoOilProduction_id: @thermo_oil_consumption.thermoOilProduction_id }
    assert_redirected_to thermo_oil_consumption_path(assigns(:thermo_oil_consumption))
  end

  test "should destroy thermo_oil_consumption" do
    assert_difference('ThermoOilConsumption.count', -1) do
      delete :destroy, id: @thermo_oil_consumption
    end

    assert_redirected_to thermo_oil_consumptions_path
  end
end
