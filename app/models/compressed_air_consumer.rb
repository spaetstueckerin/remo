class CompressedAirConsumer < ActiveRecord::Base
  attr_accessible :compressor_id, :machinery_id, :neededPressureSettling, :neededQuality, :requirementType, :volumeStreamMax, :volumeStreamMin, :volumeStreamNom, :compressed_air_production_basic
  belongs_to :compressed_air_production_basic
end
