require 'test_helper'

class ProductionDataTypesControllerTest < ActionController::TestCase
  setup do
    @production_data_type = production_data_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:production_data_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production_data_type" do
    assert_difference('ProductionDataType.count') do
      post :create, production_data_type: { description_text: @production_data_type.description_text, pd_type: @production_data_type.pd_type, production_data_id: @production_data_type.production_data_id, unit: @production_data_type.unit }
    end

    assert_redirected_to production_data_type_path(assigns(:production_data_type))
  end

  test "should show production_data_type" do
    get :show, id: @production_data_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production_data_type
    assert_response :success
  end

  test "should update production_data_type" do
    put :update, id: @production_data_type, production_data_type: { description_text: @production_data_type.description_text, pd_type: @production_data_type.pd_type, production_data_id: @production_data_type.production_data_id, unit: @production_data_type.unit }
    assert_redirected_to production_data_type_path(assigns(:production_data_type))
  end

  test "should destroy production_data_type" do
    assert_difference('ProductionDataType.count', -1) do
      delete :destroy, id: @production_data_type
    end

    assert_redirected_to production_data_types_path
  end
end
