require 'test_helper'

class CompressedAirProductionBasicsControllerTest < ActionController::TestCase
  setup do
    @compressed_air_production_basic = compressed_air_production_basics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_production_basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_production_basic" do
    assert_difference('CompressedAirProductionBasic.count') do
      post :create, compressed_air_production_basic: { airFrom: @compressed_air_production_basic.airFrom, airWhere: @compressed_air_production_basic.airWhere, breakPressure: @compressed_air_production_basic.breakPressure, capacity: @compressed_air_production_basic.capacity, coolingMedium: @compressed_air_production_basic.coolingMedium, facilityCharacter: @compressed_air_production_basic.facilityCharacter, heatApplicationArea: @compressed_air_production_basic.heatApplicationArea, heatRecovery: @compressed_air_production_basic.heatRecovery, higherControl: @compressed_air_production_basic.higherControl, loadCharacter: @compressed_air_production_basic.loadCharacter, location_id: @compressed_air_production_basic.location_id, manufacturer: @compressed_air_production_basic.manufacturer, nominalDeliveryRate: @compressed_air_production_basic.nominalDeliveryRate, pressureExhaust: @compressed_air_production_basic.pressureExhaust, pressureSettling: @compressed_air_production_basic.pressureSettling, raisingPressure: @compressed_air_production_basic.raisingPressure, redundancyRequirements: @compressed_air_production_basic.redundancyRequirements, speedRegulation: @compressed_air_production_basic.speedRegulation, support: @compressed_air_production_basic.support, version: @compressed_air_production_basic.version, yearOfManufacturing: @compressed_air_production_basic.yearOfManufacturing }
    end

    assert_redirected_to compressed_air_production_basic_path(assigns(:compressed_air_production_basic))
  end

  test "should show compressed_air_production_basic" do
    get :show, id: @compressed_air_production_basic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_production_basic
    assert_response :success
  end

  test "should update compressed_air_production_basic" do
    put :update, id: @compressed_air_production_basic, compressed_air_production_basic: { airFrom: @compressed_air_production_basic.airFrom, airWhere: @compressed_air_production_basic.airWhere, breakPressure: @compressed_air_production_basic.breakPressure, capacity: @compressed_air_production_basic.capacity, coolingMedium: @compressed_air_production_basic.coolingMedium, facilityCharacter: @compressed_air_production_basic.facilityCharacter, heatApplicationArea: @compressed_air_production_basic.heatApplicationArea, heatRecovery: @compressed_air_production_basic.heatRecovery, higherControl: @compressed_air_production_basic.higherControl, loadCharacter: @compressed_air_production_basic.loadCharacter, location_id: @compressed_air_production_basic.location_id, manufacturer: @compressed_air_production_basic.manufacturer, nominalDeliveryRate: @compressed_air_production_basic.nominalDeliveryRate, pressureExhaust: @compressed_air_production_basic.pressureExhaust, pressureSettling: @compressed_air_production_basic.pressureSettling, raisingPressure: @compressed_air_production_basic.raisingPressure, redundancyRequirements: @compressed_air_production_basic.redundancyRequirements, speedRegulation: @compressed_air_production_basic.speedRegulation, support: @compressed_air_production_basic.support, version: @compressed_air_production_basic.version, yearOfManufacturing: @compressed_air_production_basic.yearOfManufacturing }
    assert_redirected_to compressed_air_production_basic_path(assigns(:compressed_air_production_basic))
  end

  test "should destroy compressed_air_production_basic" do
    assert_difference('CompressedAirProductionBasic.count', -1) do
      delete :destroy, id: @compressed_air_production_basic
    end

    assert_redirected_to compressed_air_production_basics_path
  end
end
