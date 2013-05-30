require 'test_helper'

class MachineriesControllerTest < ActionController::TestCase
  setup do
    @machinery = machineries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machineries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machinery" do
    assert_difference('Machinery.count') do
      post :create, machinery: { description: @machinery.description, energyConsumption: @machinery.energyConsumption, enterpriseID: @machinery.enterpriseID, machineryTypeID: @machinery.machineryTypeID, name: @machinery.name, yearOfBuy: @machinery.yearOfBuy, yearOfConstruction: @machinery.yearOfConstruction }
    end

    assert_redirected_to machinery_path(assigns(:machinery))
  end

  test "should show machinery" do
    get :show, id: @machinery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machinery
    assert_response :success
  end

  test "should update machinery" do
    put :update, id: @machinery, machinery: { description: @machinery.description, energyConsumption: @machinery.energyConsumption, enterpriseID: @machinery.enterpriseID, machineryTypeID: @machinery.machineryTypeID, name: @machinery.name, yearOfBuy: @machinery.yearOfBuy, yearOfConstruction: @machinery.yearOfConstruction }
    assert_redirected_to machinery_path(assigns(:machinery))
  end

  test "should destroy machinery" do
    assert_difference('Machinery.count', -1) do
      delete :destroy, id: @machinery
    end

    assert_redirected_to machineries_path
  end
end
