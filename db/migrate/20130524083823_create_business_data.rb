class CreateBusinessData < ActiveRecord::Migration
  def change
    create_table :business_data do |t|
      t.integer :enterpriseId
      t.integer :year
      t.decimal :annualSales
      t.decimal :netIncome
      t.decimal :energyEfficiencyInvestment

      t.timestamps
    end
  end
end
