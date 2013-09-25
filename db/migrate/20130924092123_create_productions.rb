class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :productRange_id
      t.integer :productedUnits
      t.integer :year

      t.timestamps
    end
  end
end
