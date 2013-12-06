class EnergyGoalMeasure < ActiveRecord::Base
  attr_accessible :energy_goal_measure

  PERCENT = 1
  EUR = 2
  KW = 3
  MW = 4
  L = 5
  M3 = 6
  KG = 7
  T = 8
end
