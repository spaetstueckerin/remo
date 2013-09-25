require 'test_helper'

class ProducedUnitsControllerTest < ActionController::TestCase
  setup do
    @produced_unit = produced_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produced_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produced_unit" do
    assert_difference('ProducedUnit.count') do
      post :create, produced_unit: { amount: @produced_unit.amount, productRange_id: @produced_unit.productRange_id, year: @produced_unit.year }
    end

    assert_redirected_to produced_unit_path(assigns(:produced_unit))
  end

  test "should show produced_unit" do
    get :show, id: @produced_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produced_unit
    assert_response :success
  end

  test "should update produced_unit" do
    put :update, id: @produced_unit, produced_unit: { amount: @produced_unit.amount, productRange_id: @produced_unit.productRange_id, year: @produced_unit.year }
    assert_redirected_to produced_unit_path(assigns(:produced_unit))
  end

  test "should destroy produced_unit" do
    assert_difference('ProducedUnit.count', -1) do
      delete :destroy, id: @produced_unit
    end

    assert_redirected_to produced_units_path
  end
end
