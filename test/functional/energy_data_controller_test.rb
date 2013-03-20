require 'test_helper'

class EnergyDataControllerTest < ActionController::TestCase
  setup do
    @energy_datum = energy_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energy_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energy_datum" do
    assert_difference('EnergyDatum.count') do
      post :create, energy_datum: { edt_id: @energy_datum.edt_id, enterprise_id: @energy_datum.enterprise_id, value: @energy_datum.value, year: @energy_datum.year }
    end

    assert_redirected_to energy_datum_path(assigns(:energy_datum))
  end

  test "should show energy_datum" do
    get :show, id: @energy_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energy_datum
    assert_response :success
  end

  test "should update energy_datum" do
    put :update, id: @energy_datum, energy_datum: { edt_id: @energy_datum.edt_id, enterprise_id: @energy_datum.enterprise_id, value: @energy_datum.value, year: @energy_datum.year }
    assert_redirected_to energy_datum_path(assigns(:energy_datum))
  end

  test "should destroy energy_datum" do
    assert_difference('EnergyDatum.count', -1) do
      delete :destroy, id: @energy_datum
    end

    assert_redirected_to energy_data_path
  end
end
