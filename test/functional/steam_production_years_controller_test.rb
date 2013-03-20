require 'test_helper'

class SteamProductionYearsControllerTest < ActionController::TestCase
  setup do
    @steam_production_year = steam_production_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_production_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_production_year" do
    assert_difference('SteamProductionYear.count') do
      post :create, steam_production_year: { carbonDioxideExhaust: @steam_production_year.carbonDioxideExhaust, fuelConsumption: @steam_production_year.fuelConsumption, kettleEnergyConsumption: @steam_production_year.kettleEnergyConsumption, kettleSteamParameterBar: @steam_production_year.kettleSteamParameterBar, kettleSteamParameterCel: @steam_production_year.kettleSteamParameterCel, operationHours: @steam_production_year.operationHours, steamAmount: @steam_production_year.steamAmount, tempAdditionalWater: @steam_production_year.tempAdditionalWater, tempCombustionAir: @steam_production_year.tempCombustionAir, tempExhaustAfterWRG: @steam_production_year.tempExhaustAfterWRG, tempExhaustBeforeWRG: @steam_production_year.tempExhaustBeforeWRG, yearId_integer: @steam_production_year.yearId_integer }
    end

    assert_redirected_to steam_production_year_path(assigns(:steam_production_year))
  end

  test "should show steam_production_year" do
    get :show, id: @steam_production_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_production_year
    assert_response :success
  end

  test "should update steam_production_year" do
    put :update, id: @steam_production_year, steam_production_year: { carbonDioxideExhaust: @steam_production_year.carbonDioxideExhaust, fuelConsumption: @steam_production_year.fuelConsumption, kettleEnergyConsumption: @steam_production_year.kettleEnergyConsumption, kettleSteamParameterBar: @steam_production_year.kettleSteamParameterBar, kettleSteamParameterCel: @steam_production_year.kettleSteamParameterCel, operationHours: @steam_production_year.operationHours, steamAmount: @steam_production_year.steamAmount, tempAdditionalWater: @steam_production_year.tempAdditionalWater, tempCombustionAir: @steam_production_year.tempCombustionAir, tempExhaustAfterWRG: @steam_production_year.tempExhaustAfterWRG, tempExhaustBeforeWRG: @steam_production_year.tempExhaustBeforeWRG, yearId_integer: @steam_production_year.yearId_integer }
    assert_redirected_to steam_production_year_path(assigns(:steam_production_year))
  end

  test "should destroy steam_production_year" do
    assert_difference('SteamProductionYear.count', -1) do
      delete :destroy, id: @steam_production_year
    end

    assert_redirected_to steam_production_years_path
  end
end
