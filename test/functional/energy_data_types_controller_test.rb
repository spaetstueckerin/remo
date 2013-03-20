require 'test_helper'

class EnergyDataTypesControllerTest < ActionController::TestCase
  setup do
    @energy_data_type = energy_data_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energy_data_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energy_data_type" do
    assert_difference('EnergyDataType.count') do
      post :create, energy_data_type: { description_text: @energy_data_type.description_text, ed_type: @energy_data_type.ed_type, energy_data_id: @energy_data_type.energy_data_id, unit: @energy_data_type.unit }
    end

    assert_redirected_to energy_data_type_path(assigns(:energy_data_type))
  end

  test "should show energy_data_type" do
    get :show, id: @energy_data_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energy_data_type
    assert_response :success
  end

  test "should update energy_data_type" do
    put :update, id: @energy_data_type, energy_data_type: { description_text: @energy_data_type.description_text, ed_type: @energy_data_type.ed_type, energy_data_id: @energy_data_type.energy_data_id, unit: @energy_data_type.unit }
    assert_redirected_to energy_data_type_path(assigns(:energy_data_type))
  end

  test "should destroy energy_data_type" do
    assert_difference('EnergyDataType.count', -1) do
      delete :destroy, id: @energy_data_type
    end

    assert_redirected_to energy_data_types_path
  end
end
