# ChecklistCategoryItem
# Description of a category item
class ChecklistCategoryItem < ActiveRecord::Base
  attr_accessible :name, :description, :checklist_category_id, :checklist_definition_id, :item_order, :item_head
  validates :name, :checklist_category_id, :checklist_definition_id, :item_order, :presence => true
  validates :item_order, :numericality => {:greater_than_or_equal_to => 1}
  belongs_to :checklist_categories
  has_many :checklists, :dependent => :destroy
end
