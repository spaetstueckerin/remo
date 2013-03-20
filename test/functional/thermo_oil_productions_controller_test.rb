require 'test_helper'

class ThermoOilProductionsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_production = thermo_oil_productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_production" do
    assert_difference('ThermoOilProduction.count') do
      post :create, thermo_oil_production: { burnerManuYear: @thermo_oil_production.burnerManuYear, burnerManufacturer: @thermo_oil_production.burnerManufacturer, burnerType: @thermo_oil_production.burnerType, chimney: @thermo_oil_production.chimney, districtHeatMax: @thermo_oil_production.districtHeatMax, districtHeatMin: @thermo_oil_production.districtHeatMin, exhaustHeatRecovery: @thermo_oil_production.exhaustHeatRecovery, fuelDenseness: @thermo_oil_production.fuelDenseness, fuelType: @thermo_oil_production.fuelType, fuelValue: @thermo_oil_production.fuelValue, kettleCapacity: @thermo_oil_production.kettleCapacity, kettleManuYear: @thermo_oil_production.kettleManuYear, kettleManufacturer: @thermo_oil_production.kettleManufacturer, kettleName: @thermo_oil_production.kettleName, o2control: @thermo_oil_production.o2control, thermoOilName: @thermo_oil_production.thermoOilName }
    end

    assert_redirected_to thermo_oil_production_path(assigns(:thermo_oil_production))
  end

  test "should show thermo_oil_production" do
    get :show, id: @thermo_oil_production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_production
    assert_response :success
  end

  test "should update thermo_oil_production" do
    put :update, id: @thermo_oil_production, thermo_oil_production: { burnerManuYear: @thermo_oil_production.burnerManuYear, burnerManufacturer: @thermo_oil_production.burnerManufacturer, burnerType: @thermo_oil_production.burnerType, chimney: @thermo_oil_production.chimney, districtHeatMax: @thermo_oil_production.districtHeatMax, districtHeatMin: @thermo_oil_production.districtHeatMin, exhaustHeatRecovery: @thermo_oil_production.exhaustHeatRecovery, fuelDenseness: @thermo_oil_production.fuelDenseness, fuelType: @thermo_oil_production.fuelType, fuelValue: @thermo_oil_production.fuelValue, kettleCapacity: @thermo_oil_production.kettleCapacity, kettleManuYear: @thermo_oil_production.kettleManuYear, kettleManufacturer: @thermo_oil_production.kettleManufacturer, kettleName: @thermo_oil_production.kettleName, o2control: @thermo_oil_production.o2control, thermoOilName: @thermo_oil_production.thermoOilName }
    assert_redirected_to thermo_oil_production_path(assigns(:thermo_oil_production))
  end

  test "should destroy thermo_oil_production" do
    assert_difference('ThermoOilProduction.count', -1) do
      delete :destroy, id: @thermo_oil_production
    end

    assert_redirected_to thermo_oil_productions_path
  end
end
