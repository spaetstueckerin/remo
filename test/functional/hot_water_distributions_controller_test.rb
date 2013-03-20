require 'test_helper'

class HotWaterDistributionsControllerTest < ActionController::TestCase
  setup do
    @hot_water_distribution = hot_water_distributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hot_water_distributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hot_water_distribution" do
    assert_difference('HotWaterDistribution.count') do
      post :create, hot_water_distribution: { aperture: @hot_water_distribution.aperture, hotWaterConsumption_id: @hot_water_distribution.hotWaterConsumption_id, hotWaterProduction_id: @hot_water_distribution.hotWaterProduction_id, isolation: @hot_water_distribution.isolation, length: @hot_water_distribution.length, volumeFlowMax: @hot_water_distribution.volumeFlowMax, volumeFlowMin: @hot_water_distribution.volumeFlowMin, volumeFlowNenn: @hot_water_distribution.volumeFlowNenn }
    end

    assert_redirected_to hot_water_distribution_path(assigns(:hot_water_distribution))
  end

  test "should show hot_water_distribution" do
    get :show, id: @hot_water_distribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hot_water_distribution
    assert_response :success
  end

  test "should update hot_water_distribution" do
    put :update, id: @hot_water_distribution, hot_water_distribution: { aperture: @hot_water_distribution.aperture, hotWaterConsumption_id: @hot_water_distribution.hotWaterConsumption_id, hotWaterProduction_id: @hot_water_distribution.hotWaterProduction_id, isolation: @hot_water_distribution.isolation, length: @hot_water_distribution.length, volumeFlowMax: @hot_water_distribution.volumeFlowMax, volumeFlowMin: @hot_water_distribution.volumeFlowMin, volumeFlowNenn: @hot_water_distribution.volumeFlowNenn }
    assert_redirected_to hot_water_distribution_path(assigns(:hot_water_distribution))
  end

  test "should destroy hot_water_distribution" do
    assert_difference('HotWaterDistribution.count', -1) do
      delete :destroy, id: @hot_water_distribution
    end

    assert_redirected_to hot_water_distributions_path
  end
end
