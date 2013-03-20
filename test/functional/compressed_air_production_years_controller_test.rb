require 'test_helper'

class CompressedAirProductionYearsControllerTest < ActionController::TestCase
  setup do
    @compressed_air_production_year = compressed_air_production_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_production_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_production_year" do
    assert_difference('CompressedAirProductionYear.count') do
      post :create, compressed_air_production_year: { advanceTemp: @compressed_air_production_year.advanceTemp, capacity: @compressed_air_production_year.capacity, deliveryRate: @compressed_air_production_year.deliveryRate, energyConsumption: @compressed_air_production_year.energyConsumption, loadHours: @compressed_air_production_year.loadHours, operatingCycles: @compressed_air_production_year.operatingCycles, operatingHours: @compressed_air_production_year.operatingHours, overtravelTimeIdle: @compressed_air_production_year.overtravelTimeIdle, pressureExhaustTempMax: @compressed_air_production_year.pressureExhaustTempMax, pressureExhaustTempMin: @compressed_air_production_year.pressureExhaustTempMin, pressureMin: @compressed_air_production_year.pressureMin, returnTemp: @compressed_air_production_year.returnTemp }
    end

    assert_redirected_to compressed_air_production_year_path(assigns(:compressed_air_production_year))
  end

  test "should show compressed_air_production_year" do
    get :show, id: @compressed_air_production_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_production_year
    assert_response :success
  end

  test "should update compressed_air_production_year" do
    put :update, id: @compressed_air_production_year, compressed_air_production_year: { advanceTemp: @compressed_air_production_year.advanceTemp, capacity: @compressed_air_production_year.capacity, deliveryRate: @compressed_air_production_year.deliveryRate, energyConsumption: @compressed_air_production_year.energyConsumption, loadHours: @compressed_air_production_year.loadHours, operatingCycles: @compressed_air_production_year.operatingCycles, operatingHours: @compressed_air_production_year.operatingHours, overtravelTimeIdle: @compressed_air_production_year.overtravelTimeIdle, pressureExhaustTempMax: @compressed_air_production_year.pressureExhaustTempMax, pressureExhaustTempMin: @compressed_air_production_year.pressureExhaustTempMin, pressureMin: @compressed_air_production_year.pressureMin, returnTemp: @compressed_air_production_year.returnTemp }
    assert_redirected_to compressed_air_production_year_path(assigns(:compressed_air_production_year))
  end

  test "should destroy compressed_air_production_year" do
    assert_difference('CompressedAirProductionYear.count', -1) do
      delete :destroy, id: @compressed_air_production_year
    end

    assert_redirected_to compressed_air_production_years_path
  end
end
