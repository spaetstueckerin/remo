require 'test_helper'

class HotWaterDistributionYearsControllerTest < ActionController::TestCase
  setup do
    @hot_water_distribution_year = hot_water_distribution_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_distribution_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_distribution_year" do
    assert_difference('HotWaterDistributionYear.count') do
      post :create, hot_water_distribution_year: { compression: @hot_water_distribution_year.compression, flowTemperature: @hot_water_distribution_year.flowTemperature, hotWaterConsumption_id: @hot_water_distribution_year.hotWaterConsumption_id, hotWaterProduction_id: @hot_water_distribution_year.hotWaterProduction_id, returnTemperature: @hot_water_distribution_year.returnTemperature }
    end

    assert_redirected_to hot_water_distribution_year_path(assigns(:hot_water_distribution_year))
  end

  test "should show hot_water_distribution_year" do
    get :show, id: @hot_water_distribution_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_distribution_year
    assert_response :success
  end

  test "should update hot_water_distribution_year" do
    put :update, id: @hot_water_distribution_year, hot_water_distribution_year: { compression: @hot_water_distribution_year.compression, flowTemperature: @hot_water_distribution_year.flowTemperature, hotWaterConsumption_id: @hot_water_distribution_year.hotWaterConsumption_id, hotWaterProduction_id: @hot_water_distribution_year.hotWaterProduction_id, returnTemperature: @hot_water_distribution_year.returnTemperature }
    assert_redirected_to hot_water_distribution_year_path(assigns(:hot_water_distribution_year))
  end

  test "should destroy hot_water_distribution_year" do
    assert_difference('HotWaterDistributionYear.count', -1) do
      delete :destroy, id: @hot_water_distribution_year
    end

    assert_redirected_to hot_water_distribution_years_path
  end
end
