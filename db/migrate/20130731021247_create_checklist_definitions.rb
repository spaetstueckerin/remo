class CreateChecklistDefinitions < ActiveRecord::Migration
  def change
    create_table :checklist_definitions do |t|
      t.string :name
      t.string :checktype
      t.text :description

      t.timestamps
    end
  end
end
