require 'test_helper'

class HotWaterConsumptionYearsControllerTest < ActionController::TestCase
  setup do
    @hot_water_consumption_year = hot_water_consumption_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_consumption_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_consumption_year" do
    assert_difference('HotWaterConsumptionYear.count') do
      post :create, hot_water_consumption_year: { flowTemperature: @hot_water_consumption_year.flowTemperature, hotWaterProduction_id: @hot_water_consumption_year.hotWaterProduction_id, machinery_id: @hot_water_consumption_year.machinery_id, processTemperature: @hot_water_consumption_year.processTemperature, returnTemperature: @hot_water_consumption_year.returnTemperature, volumeStream: @hot_water_consumption_year.volumeStream }
    end

    assert_redirected_to hot_water_consumption_year_path(assigns(:hot_water_consumption_year))
  end

  test "should show hot_water_consumption_year" do
    get :show, id: @hot_water_consumption_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_consumption_year
    assert_response :success
  end

  test "should update hot_water_consumption_year" do
    put :update, id: @hot_water_consumption_year, hot_water_consumption_year: { flowTemperature: @hot_water_consumption_year.flowTemperature, hotWaterProduction_id: @hot_water_consumption_year.hotWaterProduction_id, machinery_id: @hot_water_consumption_year.machinery_id, processTemperature: @hot_water_consumption_year.processTemperature, returnTemperature: @hot_water_consumption_year.returnTemperature, volumeStream: @hot_water_consumption_year.volumeStream }
    assert_redirected_to hot_water_consumption_year_path(assigns(:hot_water_consumption_year))
  end

  test "should destroy hot_water_consumption_year" do
    assert_difference('HotWaterConsumptionYear.count', -1) do
      delete :destroy, id: @hot_water_consumption_year
    end

    assert_redirected_to hot_water_consumption_years_path
  end
end
