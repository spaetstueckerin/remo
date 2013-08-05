class CreateChecklistCategories < ActiveRecord::Migration
  def change
    create_table :checklist_categories do |t|
      t.string :name
      t.text :description
      t.integer :checklist_definition_id
      t.integer :category_order

      t.timestamps
    end
  end
end
