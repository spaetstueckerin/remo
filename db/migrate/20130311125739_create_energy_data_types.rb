class CreateEnergyDataTypes < ActiveRecord::Migration
  def change
    create_table :energy_data_types do |t|
      t.string :ed_type
      t.string :description_text
      t.string :unit
      t.integer :energy_data_id

      t.timestamps
    end
  end
end
