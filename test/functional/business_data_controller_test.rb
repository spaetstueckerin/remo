require 'test_helper'

class BusinessDataControllerTest < ActionController::TestCase
  setup do
    @business_datum = business_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_datum" do
    assert_difference('BusinessDatum.count') do
      post :create, business_datum: { enterprise_id: @business_datum.enterprise_id, value: @business_datum.value, year: @business_datum.year }
    end

    assert_redirected_to business_datum_path(assigns(:business_datum))
  end

  test "should show business_datum" do
    get :show, id: @business_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_datum
    assert_response :success
  end

  test "should update business_datum" do
    put :update, id: @business_datum, business_datum: { enterprise_id: @business_datum.enterprise_id, value: @business_datum.value, year: @business_datum.year }
    assert_redirected_to business_datum_path(assigns(:business_datum))
  end

  test "should destroy business_datum" do
    assert_difference('BusinessDatum.count', -1) do
      delete :destroy, id: @business_datum
    end

    assert_redirected_to business_data_path
  end
end
