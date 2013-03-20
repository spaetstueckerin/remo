require 'test_helper'

class SteamProductionsControllerTest < ActionController::TestCase
  setup do
    @steam_production = steam_productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_production" do
    assert_difference('SteamProduction.count') do
      post :create, steam_production: { burnerManufacturer: @steam_production.burnerManufacturer, burnerManufacturingYear: @steam_production.burnerManufacturingYear, burnerType: @steam_production.burnerType, chimney: @steam_production.chimney, districtHeatMax: @steam_production.districtHeatMax, districtHeatMin: @steam_production.districtHeatMin, exhaustHeatRecovery: @steam_production.exhaustHeatRecovery, fuelCapacity: @steam_production.fuelCapacity, fuelType: @steam_production.fuelType, fuelValue: @steam_production.fuelValue, fuelValueUnit: @steam_production.fuelValueUnit, kettleCapacity: @steam_production.kettleCapacity, kettleManufaturer: @steam_production.kettleManufaturer, kettleName: @steam_production.kettleName, kettleSaturatedSteam: @steam_production.kettleSaturatedSteam, o2Control: @steam_production.o2Control, ventCondenser: @steam_production.ventCondenser }
    end

    assert_redirected_to steam_production_path(assigns(:steam_production))
  end

  test "should show steam_production" do
    get :show, id: @steam_production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_production
    assert_response :success
  end

  test "should update steam_production" do
    put :update, id: @steam_production, steam_production: { burnerManufacturer: @steam_production.burnerManufacturer, burnerManufacturingYear: @steam_production.burnerManufacturingYear, burnerType: @steam_production.burnerType, chimney: @steam_production.chimney, districtHeatMax: @steam_production.districtHeatMax, districtHeatMin: @steam_production.districtHeatMin, exhaustHeatRecovery: @steam_production.exhaustHeatRecovery, fuelCapacity: @steam_production.fuelCapacity, fuelType: @steam_production.fuelType, fuelValue: @steam_production.fuelValue, fuelValueUnit: @steam_production.fuelValueUnit, kettleCapacity: @steam_production.kettleCapacity, kettleManufaturer: @steam_production.kettleManufaturer, kettleName: @steam_production.kettleName, kettleSaturatedSteam: @steam_production.kettleSaturatedSteam, o2Control: @steam_production.o2Control, ventCondenser: @steam_production.ventCondenser }
    assert_redirected_to steam_production_path(assigns(:steam_production))
  end

  test "should destroy steam_production" do
    assert_difference('SteamProduction.count', -1) do
      delete :destroy, id: @steam_production
    end

    assert_redirected_to steam_productions_path
  end
end
