require 'test_helper'

class HotWaterProductionYearsControllerTest < ActionController::TestCase
  setup do
    @hot_water_production_year = hot_water_production_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_production_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_production_year" do
    assert_difference('HotWaterProductionYear.count') do
      post :create, hot_water_production_year: { carbonDioxideExhaust: @hot_water_production_year.carbonDioxideExhaust, fuelConsumption: @hot_water_production_year.fuelConsumption, hotWaterProduction_id: @hot_water_production_year.hotWaterProduction_id, kettleEnergyConsumption: @hot_water_production_year.kettleEnergyConsumption, kettleExitCompression: @hot_water_production_year.kettleExitCompression, kettleExitTemperature: @hot_water_production_year.kettleExitTemperature, operationHours: @hot_water_production_year.operationHours, tempAdditionalWater: @hot_water_production_year.tempAdditionalWater, tempCombustionAir: @hot_water_production_year.tempCombustionAir, tempExhaustAfterWRG: @hot_water_production_year.tempExhaustAfterWRG, tempExhaustBeforeWRG: @hot_water_production_year.tempExhaustBeforeWRG, year_id: @hot_water_production_year.year_id }
    end

    assert_redirected_to hot_water_production_year_path(assigns(:hot_water_production_year))
  end

  test "should show hot_water_production_year" do
    get :show, id: @hot_water_production_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_production_year
    assert_response :success
  end

  test "should update hot_water_production_year" do
    put :update, id: @hot_water_production_year, hot_water_production_year: { carbonDioxideExhaust: @hot_water_production_year.carbonDioxideExhaust, fuelConsumption: @hot_water_production_year.fuelConsumption, hotWaterProduction_id: @hot_water_production_year.hotWaterProduction_id, kettleEnergyConsumption: @hot_water_production_year.kettleEnergyConsumption, kettleExitCompression: @hot_water_production_year.kettleExitCompression, kettleExitTemperature: @hot_water_production_year.kettleExitTemperature, operationHours: @hot_water_production_year.operationHours, tempAdditionalWater: @hot_water_production_year.tempAdditionalWater, tempCombustionAir: @hot_water_production_year.tempCombustionAir, tempExhaustAfterWRG: @hot_water_production_year.tempExhaustAfterWRG, tempExhaustBeforeWRG: @hot_water_production_year.tempExhaustBeforeWRG, year_id: @hot_water_production_year.year_id }
    assert_redirected_to hot_water_production_year_path(assigns(:hot_water_production_year))
  end

  test "should destroy hot_water_production_year" do
    assert_difference('HotWaterProductionYear.count', -1) do
      delete :destroy, id: @hot_water_production_year
    end

    assert_redirected_to hot_water_production_years_path
  end
end
