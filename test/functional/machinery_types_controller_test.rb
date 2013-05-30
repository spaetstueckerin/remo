require 'test_helper'

class MachineryTypesControllerTest < ActionController::TestCase
  setup do
    @machinery_type = machinery_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machinery_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machinery_type" do
    assert_difference('MachineryType.count') do
      post :create, machinery_type: { description: @machinery_type.description, type: @machinery_type.type }
    end

    assert_redirected_to machinery_type_path(assigns(:machinery_type))
  end

  test "should show machinery_type" do
    get :show, id: @machinery_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machinery_type
    assert_response :success
  end

  test "should update machinery_type" do
    put :update, id: @machinery_type, machinery_type: { description: @machinery_type.description, type: @machinery_type.type }
    assert_redirected_to machinery_type_path(assigns(:machinery_type))
  end

  test "should destroy machinery_type" do
    assert_difference('MachineryType.count', -1) do
      delete :destroy, id: @machinery_type
    end

    assert_redirected_to machinery_types_path
  end
end
