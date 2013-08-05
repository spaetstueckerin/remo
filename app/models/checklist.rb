# Checklist
# This is the item the user votes for in a checklist
class Checklist < ActiveRecord::Base
  attr_accessible :boolean_value, :string_value, :checklist_category_item_id, :checklist_property_id
  belongs_to :checklist_properties
  belongs_to :checklist_category_items
end
