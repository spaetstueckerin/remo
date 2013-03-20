require 'test_helper'

class CompressedAirConsumersControllerTest < ActionController::TestCase
  setup do
    @compressed_air_consumer = compressed_air_consumers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compressed_air_consumers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compressed_air_consumer" do
    assert_difference('CompressedAirConsumer.count') do
      post :create, compressed_air_consumer: { compressor_id: @compressed_air_consumer.compressor_id, machinery_id: @compressed_air_consumer.machinery_id, neededPressureSettling: @compressed_air_consumer.neededPressureSettling, neededQuality: @compressed_air_consumer.neededQuality, requirementType: @compressed_air_consumer.requirementType, volumeStreamMax: @compressed_air_consumer.volumeStreamMax, volumeStreamMin: @compressed_air_consumer.volumeStreamMin, volumeStreamNom: @compressed_air_consumer.volumeStreamNom }
    end

    assert_redirected_to compressed_air_consumer_path(assigns(:compressed_air_consumer))
  end

  test "should show compressed_air_consumer" do
    get :show, id: @compressed_air_consumer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compressed_air_consumer
    assert_response :success
  end

  test "should update compressed_air_consumer" do
    put :update, id: @compressed_air_consumer, compressed_air_consumer: { compressor_id: @compressed_air_consumer.compressor_id, machinery_id: @compressed_air_consumer.machinery_id, neededPressureSettling: @compressed_air_consumer.neededPressureSettling, neededQuality: @compressed_air_consumer.neededQuality, requirementType: @compressed_air_consumer.requirementType, volumeStreamMax: @compressed_air_consumer.volumeStreamMax, volumeStreamMin: @compressed_air_consumer.volumeStreamMin, volumeStreamNom: @compressed_air_consumer.volumeStreamNom }
    assert_redirected_to compressed_air_consumer_path(assigns(:compressed_air_consumer))
  end

  test "should destroy compressed_air_consumer" do
    assert_difference('CompressedAirConsumer.count', -1) do
      delete :destroy, id: @compressed_air_consumer
    end

    assert_redirected_to compressed_air_consumers_path
  end
end
