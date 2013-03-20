require 'test_helper'

class ColdProductionYearsControllerTest < ActionController::TestCase
  setup do
    @cold_production_year = cold_production_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_production_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_production_year" do
    assert_difference('ColdProductionYear.count') do
      post :create, cold_production_year: { coldAmount: @cold_production_year.coldAmount, coldProduction_id: @cold_production_year.coldProduction_id, energyConsumption: @cold_production_year.energyConsumption, flowTemperature: @cold_production_year.flowTemperature, massFlow: @cold_production_year.massFlow, operatingHours: @cold_production_year.operatingHours, returnTemperature: @cold_production_year.returnTemperature, temperatureIn: @cold_production_year.temperatureIn, temperatureOut: @cold_production_year.temperatureOut, waterRequirement: @cold_production_year.waterRequirement }
    end

    assert_redirected_to cold_production_year_path(assigns(:cold_production_year))
  end

  test "should show cold_production_year" do
    get :show, id: @cold_production_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_production_year
    assert_response :success
  end

  test "should update cold_production_year" do
    put :update, id: @cold_production_year, cold_production_year: { coldAmount: @cold_production_year.coldAmount, coldProduction_id: @cold_production_year.coldProduction_id, energyConsumption: @cold_production_year.energyConsumption, flowTemperature: @cold_production_year.flowTemperature, massFlow: @cold_production_year.massFlow, operatingHours: @cold_production_year.operatingHours, returnTemperature: @cold_production_year.returnTemperature, temperatureIn: @cold_production_year.temperatureIn, temperatureOut: @cold_production_year.temperatureOut, waterRequirement: @cold_production_year.waterRequirement }
    assert_redirected_to cold_production_year_path(assigns(:cold_production_year))
  end

  test "should destroy cold_production_year" do
    assert_difference('ColdProductionYear.count', -1) do
      delete :destroy, id: @cold_production_year
    end

    assert_redirected_to cold_production_years_path
  end
end
