require 'test_helper'

class BusinessDataTypesControllerTest < ActionController::TestCase
  setup do
    @business_data_type = business_data_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_data_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_data_type" do
    assert_difference('BusinessDataType.count') do
      post :create, business_data_type: { description: @business_data_type.description, type: @business_data_type.type, unit: @business_data_type.unit }
    end

    assert_redirected_to business_data_type_path(assigns(:business_data_type))
  end

  test "should show business_data_type" do
    get :show, id: @business_data_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_data_type
    assert_response :success
  end

  test "should update business_data_type" do
    put :update, id: @business_data_type, business_data_type: { description: @business_data_type.description, type: @business_data_type.type, unit: @business_data_type.unit }
    assert_redirected_to business_data_type_path(assigns(:business_data_type))
  end

  test "should destroy business_data_type" do
    assert_difference('BusinessDataType.count', -1) do
      delete :destroy, id: @business_data_type
    end

    assert_redirected_to business_data_types_path
  end
end
