require 'test_helper'

class HotWaterConsumptionsControllerTest < ActionController::TestCase
  setup do
    @hot_water_consumption = hot_water_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_consumption" do
    assert_difference('HotWaterConsumption.count') do
      post :create, hot_water_consumption: { hotWaterProduction_id: @hot_water_consumption.hotWaterProduction_id, machinery_id: @hot_water_consumption.machinery_id, requirementType: @hot_water_consumption.requirementType, useCapacity: @hot_water_consumption.useCapacity }
    end

    assert_redirected_to hot_water_consumption_path(assigns(:hot_water_consumption))
  end

  test "should show hot_water_consumption" do
    get :show, id: @hot_water_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_consumption
    assert_response :success
  end

  test "should update hot_water_consumption" do
    put :update, id: @hot_water_consumption, hot_water_consumption: { hotWaterProduction_id: @hot_water_consumption.hotWaterProduction_id, machinery_id: @hot_water_consumption.machinery_id, requirementType: @hot_water_consumption.requirementType, useCapacity: @hot_water_consumption.useCapacity }
    assert_redirected_to hot_water_consumption_path(assigns(:hot_water_consumption))
  end

  test "should destroy hot_water_consumption" do
    assert_difference('HotWaterConsumption.count', -1) do
      delete :destroy, id: @hot_water_consumption
    end

    assert_redirected_to hot_water_consumptions_path
  end
end
