require 'test_helper'

class MeterReadingsControllerTest < ActionController::TestCase
  setup do
    @meter_reading = meter_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meter_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meter_reading" do
    assert_difference('MeterReading.count') do
      post :create, meter_reading: { meter_id: @meter_reading.meter_id, readingDate: @meter_reading.readingDate, readingValue: @meter_reading.readingValue }
    end

    assert_redirected_to meter_reading_path(assigns(:meter_reading))
  end

  test "should show meter_reading" do
    get :show, id: @meter_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meter_reading
    assert_response :success
  end

  test "should update meter_reading" do
    put :update, id: @meter_reading, meter_reading: { meter_id: @meter_reading.meter_id, readingDate: @meter_reading.readingDate, readingValue: @meter_reading.readingValue }
    assert_redirected_to meter_reading_path(assigns(:meter_reading))
  end

  test "should destroy meter_reading" do
    assert_difference('MeterReading.count', -1) do
      delete :destroy, id: @meter_reading
    end

    assert_redirected_to meter_readings_path
  end
end
