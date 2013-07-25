require 'test_helper'

class MeasuringDataControllerTest < ActionController::TestCase
  setup do
    @measuring_datum = measuring_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measuring_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measuring_datum" do
    assert_difference('MeasuringDatum.count') do
      post :create, measuring_datum: { capacity: @measuring_datum.capacity, measuringDate: @measuring_datum.measuringDate, measuringTime: @measuring_datum.measuringTime }
    end

    assert_redirected_to measuring_datum_path(assigns(:measuring_datum))
  end

  test "should show measuring_datum" do
    get :show, id: @measuring_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measuring_datum
    assert_response :success
  end

  test "should update measuring_datum" do
    put :update, id: @measuring_datum, measuring_datum: { capacity: @measuring_datum.capacity, measuringDate: @measuring_datum.measuringDate, measuringTime: @measuring_datum.measuringTime }
    assert_redirected_to measuring_datum_path(assigns(:measuring_datum))
  end

  test "should destroy measuring_datum" do
    assert_difference('MeasuringDatum.count', -1) do
      delete :destroy, id: @measuring_datum
    end

    assert_redirected_to measuring_data_path
  end
end
