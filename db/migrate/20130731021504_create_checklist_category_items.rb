class CreateChecklistCategoryItems < ActiveRecord::Migration
  def change
    create_table :checklist_category_items do |t|
      t.text :name
      t.text :description
      t.integer :checklist_category_id
      t.integer :checklist_definition_id
      t.integer :item_order
      t.text :item_head

      t.timestamps
    end
  end
end
