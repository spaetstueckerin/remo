require 'test_helper'

class SteamDistributionsControllerTest < ActionController::TestCase
  setup do
    @steam_distribution = steam_distributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_distributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_distribution" do
    assert_difference('SteamDistribution.count') do
      post :create, steam_distribution: { dpAperture: @steam_distribution.dpAperture, dpIsolation: @steam_distribution.dpIsolation, dpLength: @steam_distribution.dpLength, drain: @steam_distribution.drain, kpAperture: @steam_distribution.kpAperture, kpIsolation: @steam_distribution.kpIsolation, kpLength: @steam_distribution.kpLength, massFlowMax: @steam_distribution.massFlowMax, massFlowMin: @steam_distribution.massFlowMin, massFlowNenn: @steam_distribution.massFlowNenn, steamConsumer_id: @steam_distribution.steamConsumer_id, steamProduction_id: @steam_distribution.steamProduction_id }
    end

    assert_redirected_to steam_distribution_path(assigns(:steam_distribution))
  end

  test "should show steam_distribution" do
    get :show, id: @steam_distribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_distribution
    assert_response :success
  end

  test "should update steam_distribution" do
    put :update, id: @steam_distribution, steam_distribution: { dpAperture: @steam_distribution.dpAperture, dpIsolation: @steam_distribution.dpIsolation, dpLength: @steam_distribution.dpLength, drain: @steam_distribution.drain, kpAperture: @steam_distribution.kpAperture, kpIsolation: @steam_distribution.kpIsolation, kpLength: @steam_distribution.kpLength, massFlowMax: @steam_distribution.massFlowMax, massFlowMin: @steam_distribution.massFlowMin, massFlowNenn: @steam_distribution.massFlowNenn, steamConsumer_id: @steam_distribution.steamConsumer_id, steamProduction_id: @steam_distribution.steamProduction_id }
    assert_redirected_to steam_distribution_path(assigns(:steam_distribution))
  end

  test "should destroy steam_distribution" do
    assert_difference('SteamDistribution.count', -1) do
      delete :destroy, id: @steam_distribution
    end

    assert_redirected_to steam_distributions_path
  end
end
