require 'test_helper'

class EnergyGoalsControllerTest < ActionController::TestCase
  setup do
    @energy_goal = energy_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energy_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energy_goal" do
    assert_difference('EnergyGoal.count') do
      post :create, energy_goal: { checklist_id: @energy_goal.checklist_id, concept_id: @energy_goal.concept_id, energy_type_id: @energy_goal.energy_type_id, from: @energy_goal.from, goal_id: @energy_goal.goal_id, measure_id: @energy_goal.measure_id, to: @energy_goal.to, value: @energy_goal.value }
    end

    assert_redirected_to energy_goal_path(assigns(:energy_goal))
  end

  test "should show energy_goal" do
    get :show, id: @energy_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energy_goal
    assert_response :success
  end

  test "should update energy_goal" do
    put :update, id: @energy_goal, energy_goal: { checklist_id: @energy_goal.checklist_id, concept_id: @energy_goal.concept_id, energy_type_id: @energy_goal.energy_type_id, from: @energy_goal.from, goal_id: @energy_goal.goal_id, measure_id: @energy_goal.measure_id, to: @energy_goal.to, value: @energy_goal.value }
    assert_redirected_to energy_goal_path(assigns(:energy_goal))
  end

  test "should destroy energy_goal" do
    assert_difference('EnergyGoal.count', -1) do
      delete :destroy, id: @energy_goal
    end

    assert_redirected_to energy_goals_path
  end
end
