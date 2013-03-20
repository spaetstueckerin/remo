class CreateCompressedAirDemands < ActiveRecord::Migration
  def change
    create_table :compressed_air_demands do |t|
      t.time :timeFrom
      t.time :timeTo

      t.timestamps
    end
  end
end
