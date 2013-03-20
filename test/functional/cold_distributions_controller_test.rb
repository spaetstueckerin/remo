require 'test_helper'

class ColdDistributionsControllerTest < ActionController::TestCase
  setup do
    @cold_distribution = cold_distributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_distributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_distribution" do
    assert_difference('ColdDistribution.count') do
      post :create, cold_distribution: { aperture: @cold_distribution.aperture, coldConsumer_id: @cold_distribution.coldConsumer_id, coldProduction_id: @cold_distribution.coldProduction_id, isolation: @cold_distribution.isolation, length: @cold_distribution.length, volumeStreamMax: @cold_distribution.volumeStreamMax, volumeStreamMin: @cold_distribution.volumeStreamMin, volumeStreamNenn: @cold_distribution.volumeStreamNenn }
    end

    assert_redirected_to cold_distribution_path(assigns(:cold_distribution))
  end

  test "should show cold_distribution" do
    get :show, id: @cold_distribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_distribution
    assert_response :success
  end

  test "should update cold_distribution" do
    put :update, id: @cold_distribution, cold_distribution: { aperture: @cold_distribution.aperture, coldConsumer_id: @cold_distribution.coldConsumer_id, coldProduction_id: @cold_distribution.coldProduction_id, isolation: @cold_distribution.isolation, length: @cold_distribution.length, volumeStreamMax: @cold_distribution.volumeStreamMax, volumeStreamMin: @cold_distribution.volumeStreamMin, volumeStreamNenn: @cold_distribution.volumeStreamNenn }
    assert_redirected_to cold_distribution_path(assigns(:cold_distribution))
  end

  test "should destroy cold_distribution" do
    assert_difference('ColdDistribution.count', -1) do
      delete :destroy, id: @cold_distribution
    end

    assert_redirected_to cold_distributions_path
  end
end
