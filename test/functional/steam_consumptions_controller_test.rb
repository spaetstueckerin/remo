require 'test_helper'

class SteamConsumptionsControllerTest < ActionController::TestCase
  setup do
    @steam_consumption = steam_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_consumption" do
    assert_difference('SteamConsumption.count') do
      post :create, steam_consumption: { consumer_id: @steam_consumption.consumer_id, dpCompressionNeeded: @steam_consumption.dpCompressionNeeded, dpTemperatureNeeded: @steam_consumption.dpTemperatureNeeded, massFlowMaxNeeded: @steam_consumption.massFlowMaxNeeded, massFlowMinNeeded: @steam_consumption.massFlowMinNeeded, massFlowNennNeeded: @steam_consumption.massFlowNennNeeded, requirementType: @steam_consumption.requirementType, steamProduction_id: @steam_consumption.steamProduction_id, system: @steam_consumption.system }
    end

    assert_redirected_to steam_consumption_path(assigns(:steam_consumption))
  end

  test "should show steam_consumption" do
    get :show, id: @steam_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_consumption
    assert_response :success
  end

  test "should update steam_consumption" do
    put :update, id: @steam_consumption, steam_consumption: { consumer_id: @steam_consumption.consumer_id, dpCompressionNeeded: @steam_consumption.dpCompressionNeeded, dpTemperatureNeeded: @steam_consumption.dpTemperatureNeeded, massFlowMaxNeeded: @steam_consumption.massFlowMaxNeeded, massFlowMinNeeded: @steam_consumption.massFlowMinNeeded, massFlowNennNeeded: @steam_consumption.massFlowNennNeeded, requirementType: @steam_consumption.requirementType, steamProduction_id: @steam_consumption.steamProduction_id, system: @steam_consumption.system }
    assert_redirected_to steam_consumption_path(assigns(:steam_consumption))
  end

  test "should destroy steam_consumption" do
    assert_difference('SteamConsumption.count', -1) do
      delete :destroy, id: @steam_consumption
    end

    assert_redirected_to steam_consumptions_path
  end
end
