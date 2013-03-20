require 'test_helper'

class CompressedAirConsumptionyearsControllerTest < ActionController::TestCase
  setup do
    @compressed_air_consumptionyear = compressed_air_consumptionyears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_consumptionyears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_consumptionyear" do
    assert_difference('CompressedAirConsumptionyear.count') do
      post :create, compressed_air_consumptionyear: { verbrauch: @compressed_air_consumptionyear.verbrauch, year_id: @compressed_air_consumptionyear.year_id }
    end

    assert_redirected_to compressed_air_consumptionyear_path(assigns(:compressed_air_consumptionyear))
  end

  test "should show compressed_air_consumptionyear" do
    get :show, id: @compressed_air_consumptionyear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_consumptionyear
    assert_response :success
  end

  test "should update compressed_air_consumptionyear" do
    put :update, id: @compressed_air_consumptionyear, compressed_air_consumptionyear: { verbrauch: @compressed_air_consumptionyear.verbrauch, year_id: @compressed_air_consumptionyear.year_id }
    assert_redirected_to compressed_air_consumptionyear_path(assigns(:compressed_air_consumptionyear))
  end

  test "should destroy compressed_air_consumptionyear" do
    assert_difference('CompressedAirConsumptionyear.count', -1) do
      delete :destroy, id: @compressed_air_consumptionyear
    end

    assert_redirected_to compressed_air_consumptionyears_path
  end
end
