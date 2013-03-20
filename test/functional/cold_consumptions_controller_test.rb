require 'test_helper'

class ColdConsumptionsControllerTest < ActionController::TestCase
  setup do
    @cold_consumption = cold_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_consumption" do
    assert_difference('ColdConsumption.count') do
      post :create, cold_consumption: { coldDistribution_id: @cold_consumption.coldDistribution_id, coldProduction_id: @cold_consumption.coldProduction_id, machinery_id: @cold_consumption.machinery_id, profitCapacity: @cold_consumption.profitCapacity, requirementType: @cold_consumption.requirementType }
    end

    assert_redirected_to cold_consumption_path(assigns(:cold_consumption))
  end

  test "should show cold_consumption" do
    get :show, id: @cold_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_consumption
    assert_response :success
  end

  test "should update cold_consumption" do
    put :update, id: @cold_consumption, cold_consumption: { coldDistribution_id: @cold_consumption.coldDistribution_id, coldProduction_id: @cold_consumption.coldProduction_id, machinery_id: @cold_consumption.machinery_id, profitCapacity: @cold_consumption.profitCapacity, requirementType: @cold_consumption.requirementType }
    assert_redirected_to cold_consumption_path(assigns(:cold_consumption))
  end

  test "should destroy cold_consumption" do
    assert_difference('ColdConsumption.count', -1) do
      delete :destroy, id: @cold_consumption
    end

    assert_redirected_to cold_consumptions_path
  end
end
