require 'test_helper'

class ProductRangesControllerTest < ActionController::TestCase
  setup do
    @product_range = product_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_range" do
    assert_difference('ProductRange.count') do
      post :create, product_range: { description: @product_range.description, name: @product_range.name }
    end

    assert_redirected_to product_range_path(assigns(:product_range))
  end

  test "should show product_range" do
    get :show, id: @product_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_range
    assert_response :success
  end

  test "should update product_range" do
    put :update, id: @product_range, product_range: { description: @product_range.description, name: @product_range.name }
    assert_redirected_to product_range_path(assigns(:product_range))
  end

  test "should destroy product_range" do
    assert_difference('ProductRange.count', -1) do
      delete :destroy, id: @product_range
    end

    assert_redirected_to product_ranges_path
  end
end
