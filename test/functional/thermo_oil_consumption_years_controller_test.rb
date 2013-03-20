require 'test_helper'

class ThermoOilConsumptionYearsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_consumption_year = thermo_oil_consumption_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_consumption_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_consumption_year" do
    assert_difference('ThermoOilConsumptionYear.count') do
      post :create, thermo_oil_consumption_year: { flowTemperature: @thermo_oil_consumption_year.flowTemperature, machinery_id: @thermo_oil_consumption_year.machinery_id, processTemperature: @thermo_oil_consumption_year.processTemperature, returnTemperature: @thermo_oil_consumption_year.returnTemperature, thermoOilConsumption_id: @thermo_oil_consumption_year.thermoOilConsumption_id, thermoOilProduction_id: @thermo_oil_consumption_year.thermoOilProduction_id, volumeStream: @thermo_oil_consumption_year.volumeStream }
    end

    assert_redirected_to thermo_oil_consumption_year_path(assigns(:thermo_oil_consumption_year))
  end

  test "should show thermo_oil_consumption_year" do
    get :show, id: @thermo_oil_consumption_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_consumption_year
    assert_response :success
  end

  test "should update thermo_oil_consumption_year" do
    put :update, id: @thermo_oil_consumption_year, thermo_oil_consumption_year: { flowTemperature: @thermo_oil_consumption_year.flowTemperature, machinery_id: @thermo_oil_consumption_year.machinery_id, processTemperature: @thermo_oil_consumption_year.processTemperature, returnTemperature: @thermo_oil_consumption_year.returnTemperature, thermoOilConsumption_id: @thermo_oil_consumption_year.thermoOilConsumption_id, thermoOilProduction_id: @thermo_oil_consumption_year.thermoOilProduction_id, volumeStream: @thermo_oil_consumption_year.volumeStream }
    assert_redirected_to thermo_oil_consumption_year_path(assigns(:thermo_oil_consumption_year))
  end

  test "should destroy thermo_oil_consumption_year" do
    assert_difference('ThermoOilConsumptionYear.count', -1) do
      delete :destroy, id: @thermo_oil_consumption_year
    end

    assert_redirected_to thermo_oil_consumption_years_path
  end
end
