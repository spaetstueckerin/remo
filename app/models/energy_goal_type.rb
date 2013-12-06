class EnergyGoalType < ActiveRecord::Base
  attr_accessible :energy_goal_type

  DECREASE = 1
  INCREASE = 2
end
