class CreateProductionDataTypes < ActiveRecord::Migration
  def change
    create_table :production_data_types do |t|
      t.string :pd_type
      t.string :description_text
      t.string :unit
      t.integer :production_data_id

      t.timestamps
    end
  end
end
