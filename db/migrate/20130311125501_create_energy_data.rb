class CreateEnergyData < ActiveRecord::Migration
  def change
    create_table :energy_data do |t|
      t.decimal :value
      t.integer :year
      t.integer :enterprise_id
      t.integer :edt_id

      t.timestamps
    end
  end
end
