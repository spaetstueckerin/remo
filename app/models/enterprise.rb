class Enterprise < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :fax, :name, :number, :phone, :website, :zip, :id, :branch_id, :bdt_id
  belongs_to :branches
  has_many :users
  has_many :contracts
  has_many :business_datum
end
