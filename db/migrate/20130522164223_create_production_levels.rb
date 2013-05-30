class CreateProductionLevels < ActiveRecord::Migration
  def change
    create_table :production_levels do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
