class CreateBusinessDataTypes < ActiveRecord::Migration
  def change
    create_table :business_data_types do |t|
      t.string :type
      t.text :description
      t.string :unit

      t.timestamps
    end
  end
end
