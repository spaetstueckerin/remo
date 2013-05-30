require 'test_helper'

class ProductionLevelsControllerTest < ActionController::TestCase
  setup do
    @production_level = production_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:production_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production_level" do
    assert_difference('ProductionLevel.count') do
      post :create, production_level: { description: @production_level.description, name: @production_level.name }
    end

    assert_redirected_to production_level_path(assigns(:production_level))
  end

  test "should show production_level" do
    get :show, id: @production_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production_level
    assert_response :success
  end

  test "should update production_level" do
    put :update, id: @production_level, production_level: { description: @production_level.description, name: @production_level.name }
    assert_redirected_to production_level_path(assigns(:production_level))
  end

  test "should destroy production_level" do
    assert_difference('ProductionLevel.count', -1) do
      delete :destroy, id: @production_level
    end

    assert_redirected_to production_levels_path
  end
end
