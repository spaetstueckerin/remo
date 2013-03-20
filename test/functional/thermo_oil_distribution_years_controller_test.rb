require 'test_helper'

class ThermoOilDistributionYearsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_distribution_year = thermo_oil_distribution_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_distribution_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_distribution_year" do
    assert_difference('ThermoOilDistributionYear.count') do
      post :create, thermo_oil_distribution_year: { compression: @thermo_oil_distribution_year.compression, flowTemperature: @thermo_oil_distribution_year.flowTemperature, returnTemperature: @thermo_oil_distribution_year.returnTemperature, thermoOilConsumption_id: @thermo_oil_distribution_year.thermoOilConsumption_id, thermoOilDistribution_id: @thermo_oil_distribution_year.thermoOilDistribution_id, thermoOilProduction_id: @thermo_oil_distribution_year.thermoOilProduction_id }
    end

    assert_redirected_to thermo_oil_distribution_year_path(assigns(:thermo_oil_distribution_year))
  end

  test "should show thermo_oil_distribution_year" do
    get :show, id: @thermo_oil_distribution_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_distribution_year
    assert_response :success
  end

  test "should update thermo_oil_distribution_year" do
    put :update, id: @thermo_oil_distribution_year, thermo_oil_distribution_year: { compression: @thermo_oil_distribution_year.compression, flowTemperature: @thermo_oil_distribution_year.flowTemperature, returnTemperature: @thermo_oil_distribution_year.returnTemperature, thermoOilConsumption_id: @thermo_oil_distribution_year.thermoOilConsumption_id, thermoOilDistribution_id: @thermo_oil_distribution_year.thermoOilDistribution_id, thermoOilProduction_id: @thermo_oil_distribution_year.thermoOilProduction_id }
    assert_redirected_to thermo_oil_distribution_year_path(assigns(:thermo_oil_distribution_year))
  end

  test "should destroy thermo_oil_distribution_year" do
    assert_difference('ThermoOilDistributionYear.count', -1) do
      delete :destroy, id: @thermo_oil_distribution_year
    end

    assert_redirected_to thermo_oil_distribution_years_path
  end
end
