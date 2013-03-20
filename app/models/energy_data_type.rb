class EnergyDataType < ActiveRecord::Base
  attr_accessible :description_text, :ed_type, :energy_data_id, :unit
  belongs_to :energy_data
end
