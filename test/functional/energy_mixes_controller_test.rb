require 'test_helper'

class EnergyMixesControllerTest < ActionController::TestCase
  setup do
    @energy_mix = energy_mixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energy_mixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energy_mix" do
    assert_difference('EnergyMix.count') do
      post :create, energy_mix: { contractId: @energy_mix.contractId, energyType: @energy_mix.energyType, value: @energy_mix.value }
    end

    assert_redirected_to energy_mix_path(assigns(:energy_mix))
  end

  test "should show energy_mix" do
    get :show, id: @energy_mix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energy_mix
    assert_response :success
  end

  test "should update energy_mix" do
    put :update, id: @energy_mix, energy_mix: { contractId: @energy_mix.contractId, energyType: @energy_mix.energyType, value: @energy_mix.value }
    assert_redirected_to energy_mix_path(assigns(:energy_mix))
  end

  test "should destroy energy_mix" do
    assert_difference('EnergyMix.count', -1) do
      delete :destroy, id: @energy_mix
    end

    assert_redirected_to energy_mixes_path
  end
end
