class CreateProducedUnits < ActiveRecord::Migration
  def change
    create_table :produced_units do |t|
      t.integer :productRange_id
      t.integer :year
      t.integer :amount

      t.timestamps
    end
  end
end
