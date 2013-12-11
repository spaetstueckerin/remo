require 'test_helper'

class WarningsControllerTest < ActionController::TestCase
  setup do
    @warning = warnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warning" do
    assert_difference('Warning.count') do
      post :create, warning: { description: @warning.description, event_source: @warning.event_source, name: @warning.name, periodicity: @warning.periodicity }
    end

    assert_redirected_to warning_path(assigns(:warning))
  end

  test "should show warning" do
    get :show, id: @warning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warning
    assert_response :success
  end

  test "should update warning" do
    put :update, id: @warning, warning: { description: @warning.description, event_source: @warning.event_source, name: @warning.name, periodicity: @warning.periodicity }
    assert_redirected_to warning_path(assigns(:warning))
  end

  test "should destroy warning" do
    assert_difference('Warning.count', -1) do
      delete :destroy, id: @warning
    end

    assert_redirected_to warnings_path
  end
end
