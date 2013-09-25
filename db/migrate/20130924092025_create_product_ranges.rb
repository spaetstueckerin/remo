class CreateProductRanges < ActiveRecord::Migration
  def change
    create_table :product_ranges do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
