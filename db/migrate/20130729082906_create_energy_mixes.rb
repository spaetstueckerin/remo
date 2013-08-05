class CreateEnergyMixes < ActiveRecord::Migration
  def change
    create_table :energy_mixes do |t|
      t.string :energyType
      t.decimal :value
      t.integer :contractId

      t.timestamps
    end
  end
end
