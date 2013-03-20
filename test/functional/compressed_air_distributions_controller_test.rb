require 'test_helper'

class CompressedAirDistributionsControllerTest < ActionController::TestCase
  setup do
    @compressed_air_distribution = compressed_air_distributions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_distributions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_distribution" do
    assert_difference('CompressedAirDistribution.count') do
      post :create, compressed_air_distribution: { addons: @compressed_air_distribution.addons, branchline: @compressed_air_distribution.branchline, branchlineL: @compressed_air_distribution.branchlineL, capacity: @compressed_air_distribution.capacity, compressedAirDryerType: @compressed_air_distribution.compressedAirDryerType, compressor_id: @compressed_air_distribution.compressor_id, leak: @compressed_air_distribution.leak, location_id: @compressed_air_distribution.location_id, mainline: @compressed_air_distribution.mainline, mainlineL: @compressed_air_distribution.mainlineL, manufacturer: @compressed_air_distribution.manufacturer, material: @compressed_air_distribution.material, pressureLoss: @compressed_air_distribution.pressureLoss, stubline: @compressed_air_distribution.stubline, stublineL: @compressed_air_distribution.stublineL, volume: @compressed_air_distribution.volume, yearOfManufacturing: @compressed_air_distribution.yearOfManufacturing }
    end

    assert_redirected_to compressed_air_distribution_path(assigns(:compressed_air_distribution))
  end

  test "should show compressed_air_distribution" do
    get :show, id: @compressed_air_distribution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_distribution
    assert_response :success
  end

  test "should update compressed_air_distribution" do
    put :update, id: @compressed_air_distribution, compressed_air_distribution: { addons: @compressed_air_distribution.addons, branchline: @compressed_air_distribution.branchline, branchlineL: @compressed_air_distribution.branchlineL, capacity: @compressed_air_distribution.capacity, compressedAirDryerType: @compressed_air_distribution.compressedAirDryerType, compressor_id: @compressed_air_distribution.compressor_id, leak: @compressed_air_distribution.leak, location_id: @compressed_air_distribution.location_id, mainline: @compressed_air_distribution.mainline, mainlineL: @compressed_air_distribution.mainlineL, manufacturer: @compressed_air_distribution.manufacturer, material: @compressed_air_distribution.material, pressureLoss: @compressed_air_distribution.pressureLoss, stubline: @compressed_air_distribution.stubline, stublineL: @compressed_air_distribution.stublineL, volume: @compressed_air_distribution.volume, yearOfManufacturing: @compressed_air_distribution.yearOfManufacturing }
    assert_redirected_to compressed_air_distribution_path(assigns(:compressed_air_distribution))
  end

  test "should destroy compressed_air_distribution" do
    assert_difference('CompressedAirDistribution.count', -1) do
      delete :destroy, id: @compressed_air_distribution
    end

    assert_redirected_to compressed_air_distributions_path
  end
end
