require 'test_helper'

class MeterTypesControllerTest < ActionController::TestCase
  setup do
    @meter_type = meter_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meter_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meter_type" do
    assert_difference('MeterType.count') do
      post :create, meter_type: { description: @meter_type.description, name: @meter_type.name }
    end

    assert_redirected_to meter_type_path(assigns(:meter_type))
  end

  test "should show meter_type" do
    get :show, id: @meter_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meter_type
    assert_response :success
  end

  test "should update meter_type" do
    put :update, id: @meter_type, meter_type: { description: @meter_type.description, name: @meter_type.name }
    assert_redirected_to meter_type_path(assigns(:meter_type))
  end

  test "should destroy meter_type" do
    assert_difference('MeterType.count', -1) do
      delete :destroy, id: @meter_type
    end

    assert_redirected_to meter_types_path
  end
end
