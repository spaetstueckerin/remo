class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :building_id
      t.integer :level
      t.text :floor_plant

      t.timestamps
    end
  end
end
