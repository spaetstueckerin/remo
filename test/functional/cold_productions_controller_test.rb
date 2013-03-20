require 'test_helper'

class ColdProductionsControllerTest < ActionController::TestCase
  setup do
    @cold_production = cold_productions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_productions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_production" do
    assert_difference('ColdProduction.count') do
      post :create, cold_production: { buildType: @cold_production.buildType, capacity: @cold_production.capacity, coolingCapacity: @cold_production.coolingCapacity, coolingMedium: @cold_production.coolingMedium, manufacturer: @cold_production.manufacturer, rkCapacity: @cold_production.rkCapacity, rkCoolingMedium: @cold_production.rkCoolingMedium, rkWayOfCooling: @cold_production.rkWayOfCooling, yearOfManufacturing: @cold_production.yearOfManufacturing }
    end

    assert_redirected_to cold_production_path(assigns(:cold_production))
  end

  test "should show cold_production" do
    get :show, id: @cold_production
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_production
    assert_response :success
  end

  test "should update cold_production" do
    put :update, id: @cold_production, cold_production: { buildType: @cold_production.buildType, capacity: @cold_production.capacity, coolingCapacity: @cold_production.coolingCapacity, coolingMedium: @cold_production.coolingMedium, manufacturer: @cold_production.manufacturer, rkCapacity: @cold_production.rkCapacity, rkCoolingMedium: @cold_production.rkCoolingMedium, rkWayOfCooling: @cold_production.rkWayOfCooling, yearOfManufacturing: @cold_production.yearOfManufacturing }
    assert_redirected_to cold_production_path(assigns(:cold_production))
  end

  test "should destroy cold_production" do
    assert_difference('ColdProduction.count', -1) do
      delete :destroy, id: @cold_production
    end

    assert_redirected_to cold_productions_path
  end
end
