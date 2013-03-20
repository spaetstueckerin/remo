require 'test_helper'

class HotWaterProductionsControllerTest < ActionController::TestCase
  setup do
    @hot_water_production = hot_water_productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_production" do
    assert_difference('HotWaterProduction.count') do
      post :create, hot_water_production: { burnerManuYear: @hot_water_production.burnerManuYear, burnerManufacturer: @hot_water_production.burnerManufacturer, burnerType: @hot_water_production.burnerType, districtHeatMax: @hot_water_production.districtHeatMax, districtHeatMin: @hot_water_production.districtHeatMin, exhaustHeatRecovery: @hot_water_production.exhaustHeatRecovery, fuelDenseness: @hot_water_production.fuelDenseness, fuelType: @hot_water_production.fuelType, fuelValue: @hot_water_production.fuelValue, kettleCapacity: @hot_water_production.kettleCapacity, kettleManuYear: @hot_water_production.kettleManuYear, kettleManufacturer: @hot_water_production.kettleManufacturer, kettleName: @hot_water_production.kettleName }
    end

    assert_redirected_to hot_water_production_path(assigns(:hot_water_production))
  end

  test "should show hot_water_production" do
    get :show, id: @hot_water_production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_production
    assert_response :success
  end

  test "should update hot_water_production" do
    put :update, id: @hot_water_production, hot_water_production: { burnerManuYear: @hot_water_production.burnerManuYear, burnerManufacturer: @hot_water_production.burnerManufacturer, burnerType: @hot_water_production.burnerType, districtHeatMax: @hot_water_production.districtHeatMax, districtHeatMin: @hot_water_production.districtHeatMin, exhaustHeatRecovery: @hot_water_production.exhaustHeatRecovery, fuelDenseness: @hot_water_production.fuelDenseness, fuelType: @hot_water_production.fuelType, fuelValue: @hot_water_production.fuelValue, kettleCapacity: @hot_water_production.kettleCapacity, kettleManuYear: @hot_water_production.kettleManuYear, kettleManufacturer: @hot_water_production.kettleManufacturer, kettleName: @hot_water_production.kettleName }
    assert_redirected_to hot_water_production_path(assigns(:hot_water_production))
  end

  test "should destroy hot_water_production" do
    assert_difference('HotWaterProduction.count', -1) do
      delete :destroy, id: @hot_water_production
    end

    assert_redirected_to hot_water_productions_path
  end
end
