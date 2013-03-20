require 'test_helper'

class ColdConsumptionYearsControllerTest < ActionController::TestCase
  setup do
    @cold_consumption_year = cold_consumption_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_consumption_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_consumption_year" do
    assert_difference('ColdConsumptionYear.count') do
      post :create, cold_consumption_year: { coldConsumption_id: @cold_consumption_year.coldConsumption_id, flowTemperature: @cold_consumption_year.flowTemperature, processTemperature: @cold_consumption_year.processTemperature, returnTemperature: @cold_consumption_year.returnTemperature, volumeStream: @cold_consumption_year.volumeStream }
    end

    assert_redirected_to cold_consumption_year_path(assigns(:cold_consumption_year))
  end

  test "should show cold_consumption_year" do
    get :show, id: @cold_consumption_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_consumption_year
    assert_response :success
  end

  test "should update cold_consumption_year" do
    put :update, id: @cold_consumption_year, cold_consumption_year: { coldConsumption_id: @cold_consumption_year.coldConsumption_id, flowTemperature: @cold_consumption_year.flowTemperature, processTemperature: @cold_consumption_year.processTemperature, returnTemperature: @cold_consumption_year.returnTemperature, volumeStream: @cold_consumption_year.volumeStream }
    assert_redirected_to cold_consumption_year_path(assigns(:cold_consumption_year))
  end

  test "should destroy cold_consumption_year" do
    assert_difference('ColdConsumptionYear.count', -1) do
      delete :destroy, id: @cold_consumption_year
    end

    assert_redirected_to cold_consumption_years_path
  end
end
