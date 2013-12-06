class EnergyGoal < ActiveRecord::Base
  attr_accessible :checklist_id, :energy_type_id, :value, :name, :measure_id
  attr_accessible :concept_id # {1 => verbrauch, 2 => kosten}
  attr_accessible :goal_id    # {1 => reduzieren, 2 => erhöhen}
  attr_accessible :from_date, :to_date
  attr_accessible :from_value, :to_value
  attr_accessible :mean_value, :last_value
  attr_accessible :status # true => energy goal open, false => energy goal closed
end
