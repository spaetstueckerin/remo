require 'test_helper'

class MeasuringsControllerTest < ActionController::TestCase
  setup do
    @measuring = measurings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measuring" do
    assert_difference('Measuring.count') do
      post :create, measuring: { dateFrom: @measuring.dateFrom, dateTo: @measuring.dateTo, description: @measuring.description, enterprise_id: @measuring.enterprise_id, location_id: @measuring.location_id }
    end

    assert_redirected_to measuring_path(assigns(:measuring))
  end

  test "should show measuring" do
    get :show, id: @measuring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measuring
    assert_response :success
  end

  test "should update measuring" do
    put :update, id: @measuring, measuring: { dateFrom: @measuring.dateFrom, dateTo: @measuring.dateTo, description: @measuring.description, enterprise_id: @measuring.enterprise_id, location_id: @measuring.location_id }
    assert_redirected_to measuring_path(assigns(:measuring))
  end

  test "should destroy measuring" do
    assert_difference('Measuring.count', -1) do
      delete :destroy, id: @measuring
    end

    assert_redirected_to measurings_path
  end
end
