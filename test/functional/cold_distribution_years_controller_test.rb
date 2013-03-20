require 'test_helper'

class ColdDistributionYearsControllerTest < ActionController::TestCase
  setup do
    @cold_distribution_year = cold_distribution_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cold_distribution_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cold_distribution_year" do
    assert_difference('ColdDistributionYear.count') do
      post :create, cold_distribution_year: { coldConsumption_id: @cold_distribution_year.coldConsumption_id, coldDistribution_id: @cold_distribution_year.coldDistribution_id, coldProduction_id: @cold_distribution_year.coldProduction_id, compression: @cold_distribution_year.compression, flowTemperature: @cold_distribution_year.flowTemperature, returnTemperature: @cold_distribution_year.returnTemperature }
    end

    assert_redirected_to cold_distribution_year_path(assigns(:cold_distribution_year))
  end

  test "should show cold_distribution_year" do
    get :show, id: @cold_distribution_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cold_distribution_year
    assert_response :success
  end

  test "should update cold_distribution_year" do
    put :update, id: @cold_distribution_year, cold_distribution_year: { coldConsumption_id: @cold_distribution_year.coldConsumption_id, coldDistribution_id: @cold_distribution_year.coldDistribution_id, coldProduction_id: @cold_distribution_year.coldProduction_id, compression: @cold_distribution_year.compression, flowTemperature: @cold_distribution_year.flowTemperature, returnTemperature: @cold_distribution_year.returnTemperature }
    assert_redirected_to cold_distribution_year_path(assigns(:cold_distribution_year))
  end

  test "should destroy cold_distribution_year" do
    assert_difference('ColdDistributionYear.count', -1) do
      delete :destroy, id: @cold_distribution_year
    end

    assert_redirected_to cold_distribution_years_path
  end
end
