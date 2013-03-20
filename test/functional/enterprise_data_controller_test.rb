require 'test_helper'

class EnterpriseDataControllerTest < ActionController::TestCase
  setup do
    @enterprise_datum = enterprise_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enterprise_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enterprise_datum" do
    assert_difference('EnterpriseDatum.count') do
      post :create, enterprise_datum: { endt_id: @enterprise_datum.endt_id, enterprise_id: @enterprise_datum.enterprise_id, value: @enterprise_datum.value, year: @enterprise_datum.year }
    end

    assert_redirected_to enterprise_datum_path(assigns(:enterprise_datum))
  end

  test "should show enterprise_datum" do
    get :show, id: @enterprise_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enterprise_datum
    assert_response :success
  end

  test "should update enterprise_datum" do
    put :update, id: @enterprise_datum, enterprise_datum: { endt_id: @enterprise_datum.endt_id, enterprise_id: @enterprise_datum.enterprise_id, value: @enterprise_datum.value, year: @enterprise_datum.year }
    assert_redirected_to enterprise_datum_path(assigns(:enterprise_datum))
  end

  test "should destroy enterprise_datum" do
    assert_difference('EnterpriseDatum.count', -1) do
      delete :destroy, id: @enterprise_datum
    end

    assert_redirected_to enterprise_data_path
  end
end
