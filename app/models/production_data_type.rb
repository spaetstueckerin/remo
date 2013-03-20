class ProductionDataType < ActiveRecord::Base
  attr_accessible :description_text, :pd_type, :production_data_id, :unit
  belongs_to :production_data
end
