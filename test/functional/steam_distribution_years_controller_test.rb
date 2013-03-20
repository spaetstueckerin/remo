require 'test_helper'

class SteamDistributionYearsControllerTest < ActionController::TestCase
  setup do
    @steam_distribution_year = steam_distribution_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steam_distribution_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steam_distribution_year" do
    assert_difference('SteamDistributionYear.count') do
      post :create, steam_distribution_year: { dpCompression: @steam_distribution_year.dpCompression, dpTemperature: @steam_distribution_year.dpTemperature, kpCompression: @steam_distribution_year.kpCompression, kpReflux: @steam_distribution_year.kpReflux, kpTemperature: @steam_distribution_year.kpTemperature, steamConsumer_id: @steam_distribution_year.steamConsumer_id, steamProduction_id: @steam_distribution_year.steamProduction_id }
    end

    assert_redirected_to steam_distribution_year_path(assigns(:steam_distribution_year))
  end

  test "should show steam_distribution_year" do
    get :show, id: @steam_distribution_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steam_distribution_year
    assert_response :success
  end

  test "should update steam_distribution_year" do
    put :update, id: @steam_distribution_year, steam_distribution_year: { dpCompression: @steam_distribution_year.dpCompression, dpTemperature: @steam_distribution_year.dpTemperature, kpCompression: @steam_distribution_year.kpCompression, kpReflux: @steam_distribution_year.kpReflux, kpTemperature: @steam_distribution_year.kpTemperature, steamConsumer_id: @steam_distribution_year.steamConsumer_id, steamProduction_id: @steam_distribution_year.steamProduction_id }
    assert_redirected_to steam_distribution_year_path(assigns(:steam_distribution_year))
  end

  test "should destroy steam_distribution_year" do
    assert_difference('SteamDistributionYear.count', -1) do
      delete :destroy, id: @steam_distribution_year
    end

    assert_redirected_to steam_distribution_years_path
  end
end
