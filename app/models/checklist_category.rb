class ChecklistCategory < ActiveRecord::Base
  attr_accessible  :name, :description, :checklist_definition_id, :category_order
  validates :name, :checklist_definition_id, :presence => true
  validates :category_order, :numericality => {:greater_than_or_equal_to => 1}
  belongs_to :checklist_definitions
  has_many :checklist_category_items, :dependent => :destroy
end
