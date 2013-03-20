require 'test_helper'

class CompressedAirDistributionYearsControllerTest < ActionController::TestCase
  setup do
    @compressed_air_distribution_year = compressed_air_distribution_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_distribution_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_distribution_year" do
    assert_difference('CompressedAirDistributionYear.count') do
      post :create, compressed_air_distribution_year: { leak: @compressed_air_distribution_year.leak, pressureLoss: @compressed_air_distribution_year.pressureLoss, year_id: @compressed_air_distribution_year.year_id }
    end

    assert_redirected_to compressed_air_distribution_year_path(assigns(:compressed_air_distribution_year))
  end

  test "should show compressed_air_distribution_year" do
    get :show, id: @compressed_air_distribution_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_distribution_year
    assert_response :success
  end

  test "should update compressed_air_distribution_year" do
    put :update, id: @compressed_air_distribution_year, compressed_air_distribution_year: { leak: @compressed_air_distribution_year.leak, pressureLoss: @compressed_air_distribution_year.pressureLoss, year_id: @compressed_air_distribution_year.year_id }
    assert_redirected_to compressed_air_distribution_year_path(assigns(:compressed_air_distribution_year))
  end

  test "should destroy compressed_air_distribution_year" do
    assert_difference('CompressedAirDistributionYear.count', -1) do
      delete :destroy, id: @compressed_air_distribution_year
    end

    assert_redirected_to compressed_air_distribution_years_path
  end
end
