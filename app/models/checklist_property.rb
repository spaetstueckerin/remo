# ChecklistProperty
# Contains the general properties of a checklist
class ChecklistProperty < ActiveRecord::Base
  attr_accessible  :ausgefullt_von, :datum, :name_unternehmen, :branche_unternehmen, :adresse_unternehmen, :telefonnummer_unternehmen, :name_kontaktpersonenergie, :positionimunternehmen_kontaktpersonenergie, :telefonnummer_kontaktpersonenergie, :email_kontaktpersonenergie, :notizen, :checklist_definition_id
  validates :ausgefullt_von,:datum,:name_unternehmen,:branche_unternehmen,:adresse_unternehmen,:telefonnummer_unternehmen,:name_kontaktpersonenergie,:positionimunternehmen_kontaktpersonenergie,:telefonnummer_kontaktpersonenergie,:email_kontaktpersonenergie,:checklist_definition_id, :presence => true
  belongs_to :checklist_definitions
  has_many :checklists, :dependent => :destroy
end
