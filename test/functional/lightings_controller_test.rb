require 'test_helper'

class LightingsControllerTest < ActionController::TestCase
  setup do
    @lighting = lightings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lightings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lighting" do
    assert_difference('Lighting.count') do
      post :create, lighting: { bulbs: @lighting.bulbs, controlGear: @lighting.controlGear, groupSwitchable: @lighting.groupSwitchable, hoursOfOperation: @lighting.hoursOfOperation, illuminationTechnique: @lighting.illuminationTechnique, installedPower: @lighting.installedPower, lampConfiguration: @lighting.lampConfiguration, lightControl: @lighting.lightControl, location_id: @lighting.location_id, numberOfBulbs: @lighting.numberOfBulbs, numberOfBulbsInLamp: @lighting.numberOfBulbsInLamp, powerPerLamp: @lighting.powerPerLamp, string: @lighting.string, windowShadowing: @lighting.windowShadowing, yearOfManufacturing: @lighting.yearOfManufacturing }
    end

    assert_redirected_to lighting_path(assigns(:lighting))
  end

  test "should show lighting" do
    get :show, id: @lighting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lighting
    assert_response :success
  end

  test "should update lighting" do
    put :update, id: @lighting, lighting: { bulbs: @lighting.bulbs, controlGear: @lighting.controlGear, groupSwitchable: @lighting.groupSwitchable, hoursOfOperation: @lighting.hoursOfOperation, illuminationTechnique: @lighting.illuminationTechnique, installedPower: @lighting.installedPower, lampConfiguration: @lighting.lampConfiguration, lightControl: @lighting.lightControl, location_id: @lighting.location_id, numberOfBulbs: @lighting.numberOfBulbs, numberOfBulbsInLamp: @lighting.numberOfBulbsInLamp, powerPerLamp: @lighting.powerPerLamp, string: @lighting.string, windowShadowing: @lighting.windowShadowing, yearOfManufacturing: @lighting.yearOfManufacturing }
    assert_redirected_to lighting_path(assigns(:lighting))
  end

  test "should destroy lighting" do
    assert_difference('Lighting.count', -1) do
      delete :destroy, id: @lighting
    end

    assert_redirected_to lightings_path
  end
end
