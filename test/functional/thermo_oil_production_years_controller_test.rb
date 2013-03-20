require 'test_helper'

class ThermoOilProductionYearsControllerTest < ActionController::TestCase
  setup do
    @thermo_oil_production_year = thermo_oil_production_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermo_oil_production_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermo_oil_production_year" do
    assert_difference('ThermoOilProductionYear.count') do
      post :create, thermo_oil_production_year: { carbonDioxideExhaust: @thermo_oil_production_year.carbonDioxideExhaust, fuelConsumption: @thermo_oil_production_year.fuelConsumption, kettleEnergyConsumption: @thermo_oil_production_year.kettleEnergyConsumption, kettleExitCompression: @thermo_oil_production_year.kettleExitCompression, kettleExitTemperature: @thermo_oil_production_year.kettleExitTemperature, operatingHours: @thermo_oil_production_year.operatingHours, tempAdditionalWater: @thermo_oil_production_year.tempAdditionalWater, tempCombustionAir: @thermo_oil_production_year.tempCombustionAir, tempExhaustAfterWRG: @thermo_oil_production_year.tempExhaustAfterWRG, tempExhaustBeforeWRG: @thermo_oil_production_year.tempExhaustBeforeWRG, thermoOilAmount: @thermo_oil_production_year.thermoOilAmount, thermoOilProduction_id: @thermo_oil_production_year.thermoOilProduction_id }
    end

    assert_redirected_to thermo_oil_production_year_path(assigns(:thermo_oil_production_year))
  end

  test "should show thermo_oil_production_year" do
    get :show, id: @thermo_oil_production_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermo_oil_production_year
    assert_response :success
  end

  test "should update thermo_oil_production_year" do
    put :update, id: @thermo_oil_production_year, thermo_oil_production_year: { carbonDioxideExhaust: @thermo_oil_production_year.carbonDioxideExhaust, fuelConsumption: @thermo_oil_production_year.fuelConsumption, kettleEnergyConsumption: @thermo_oil_production_year.kettleEnergyConsumption, kettleExitCompression: @thermo_oil_production_year.kettleExitCompression, kettleExitTemperature: @thermo_oil_production_year.kettleExitTemperature, operatingHours: @thermo_oil_production_year.operatingHours, tempAdditionalWater: @thermo_oil_production_year.tempAdditionalWater, tempCombustionAir: @thermo_oil_production_year.tempCombustionAir, tempExhaustAfterWRG: @thermo_oil_production_year.tempExhaustAfterWRG, tempExhaustBeforeWRG: @thermo_oil_production_year.tempExhaustBeforeWRG, thermoOilAmount: @thermo_oil_production_year.thermoOilAmount, thermoOilProduction_id: @thermo_oil_production_year.thermoOilProduction_id }
    assert_redirected_to thermo_oil_production_year_path(assigns(:thermo_oil_production_year))
  end

  test "should destroy thermo_oil_production_year" do
    assert_difference('ThermoOilProductionYear.count', -1) do
      delete :destroy, id: @thermo_oil_production_year
    end

    assert_redirected_to thermo_oil_production_years_path
  end
end
