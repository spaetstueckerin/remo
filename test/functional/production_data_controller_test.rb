require 'test_helper'

class ProductionDataControllerTest < ActionController::TestCase
  setup do
    @production_datum = production_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:production_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production_datum" do
    assert_difference('ProductionDatum.count') do
      post :create, production_datum: { edt_id: @production_datum.edt_id, enterprise_id: @production_datum.enterprise_id, value: @production_datum.value, year: @production_datum.year }
    end

    assert_redirected_to production_datum_path(assigns(:production_datum))
  end

  test "should show production_datum" do
    get :show, id: @production_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production_datum
    assert_response :success
  end

  test "should update production_datum" do
    put :update, id: @production_datum, production_datum: { edt_id: @production_datum.edt_id, enterprise_id: @production_datum.enterprise_id, value: @production_datum.value, year: @production_datum.year }
    assert_redirected_to production_datum_path(assigns(:production_datum))
  end

  test "should destroy production_datum" do
    assert_difference('ProductionDatum.count', -1) do
      delete :destroy, id: @production_datum
    end

    assert_redirected_to production_data_path
  end
end
