# ChecklistDefinition
# Contains the names and a description of the checklists
class ChecklistDefinition < ActiveRecord::Base
  attr_accessible :name, :description, :checktype
  validates :name, :presence => true
  validates :name, :uniqueness => true
  belongs_to :energy_goal
  has_many :checklist_categories, :dependent => :destroy,:order=>'Desc'
  has_many :checklist_properties, :dependent => :destroy, :order=>'Desc'
end
