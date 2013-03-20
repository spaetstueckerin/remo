require 'test_helper'

class EnterpriseDataTypesControllerTest < ActionController::TestCase
  setup do
    @enterprise_data_type = enterprise_data_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enterprise_data_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enterprise_data_type" do
    assert_difference('EnterpriseDataType.count') do
      post :create, enterprise_data_type: { description_text: @enterprise_data_type.description_text, end_type: @enterprise_data_type.end_type, enterprise_data_id: @enterprise_data_type.enterprise_data_id, unit: @enterprise_data_type.unit }
    end

    assert_redirected_to enterprise_data_type_path(assigns(:enterprise_data_type))
  end

  test "should show enterprise_data_type" do
    get :show, id: @enterprise_data_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enterprise_data_type
    assert_response :success
  end

  test "should update enterprise_data_type" do
    put :update, id: @enterprise_data_type, enterprise_data_type: { description_text: @enterprise_data_type.description_text, end_type: @enterprise_data_type.end_type, enterprise_data_id: @enterprise_data_type.enterprise_data_id, unit: @enterprise_data_type.unit }
    assert_redirected_to enterprise_data_type_path(assigns(:enterprise_data_type))
  end

  test "should destroy enterprise_data_type" do
    assert_difference('EnterpriseDataType.count', -1) do
      delete :destroy, id: @enterprise_data_type
    end

    assert_redirected_to enterprise_data_types_path
  end
end
