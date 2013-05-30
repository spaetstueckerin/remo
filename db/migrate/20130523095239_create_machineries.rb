class CreateMachineries < ActiveRecord::Migration
  def change
    create_table :machineries do |t|
      t.string :name
      t.text :description
      t.decimal :energyConsumption
      t.integer :yearOfConstruction
      t.integer :yearOfBuy
      t.integer :enterpriseID
      t.integer :machineryTypeID

      t.timestamps
    end
  end
end
