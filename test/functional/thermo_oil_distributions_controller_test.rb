require 'test_helper'

class ThermoOilDistributionsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_distribution = thermo_oil_distributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_distributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_distribution" do
    assert_difference('ThermoOilDistribution.count') do
      post :create, thermo_oil_distribution: { aperture: @thermo_oil_distribution.aperture, isolation: @thermo_oil_distribution.isolation, length: @thermo_oil_distribution.length, thermoOilConsumption_id: @thermo_oil_distribution.thermoOilConsumption_id, thermoOilProduction_id: @thermo_oil_distribution.thermoOilProduction_id, volumeFlowMax: @thermo_oil_distribution.volumeFlowMax, volumeFlowMin: @thermo_oil_distribution.volumeFlowMin, volumeFlowNenn: @thermo_oil_distribution.volumeFlowNenn }
    end

    assert_redirected_to thermo_oil_distribution_path(assigns(:thermo_oil_distribution))
  end

  test "should show thermo_oil_distribution" do
    get :show, id: @thermo_oil_distribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_distribution
    assert_response :success
  end

  test "should update thermo_oil_distribution" do
    put :update, id: @thermo_oil_distribution, thermo_oil_distribution: { aperture: @thermo_oil_distribution.aperture, isolation: @thermo_oil_distribution.isolation, length: @thermo_oil_distribution.length, thermoOilConsumption_id: @thermo_oil_distribution.thermoOilConsumption_id, thermoOilProduction_id: @thermo_oil_distribution.thermoOilProduction_id, volumeFlowMax: @thermo_oil_distribution.volumeFlowMax, volumeFlowMin: @thermo_oil_distribution.volumeFlowMin, volumeFlowNenn: @thermo_oil_distribution.volumeFlowNenn }
    assert_redirected_to thermo_oil_distribution_path(assigns(:thermo_oil_distribution))
  end

  test "should destroy thermo_oil_distribution" do
    assert_difference('ThermoOilDistribution.count', -1) do
      delete :destroy, id: @thermo_oil_distribution
    end

    assert_redirected_to thermo_oil_distributions_path
  end
end
