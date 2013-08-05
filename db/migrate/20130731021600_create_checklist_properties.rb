class CreateChecklistProperties < ActiveRecord::Migration
  def change
    create_table :checklist_properties do |t|
      t.string :ausgefullt_von
      t.date :datum
      t.string :name_unternehmen
      t.string :branche_unternehmen
      t.text :adresse_unternehmen
      t.string :telefonnummer_unternehmen
      t.string :name_kontaktpersonenergie
      t.string :positionimunternehmen_kontaktpersonenergie
      t.string :telefonnummer_kontaktpersonenergie
      t.string :email_kontaktpersonenergie
      t.text :notizen
      t.integer :checklist_definition_id

      t.timestamps
    end
  end
end
