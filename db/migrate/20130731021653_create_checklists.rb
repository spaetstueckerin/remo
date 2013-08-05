class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.boolean :boolean_value
      t.string :string_value
      t.integer :checklist_category_item_id
      t.integer :checklist_property_id

      t.timestamps
    end
  end
end
