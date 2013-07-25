class BusinessDatum < ActiveRecord::Base
  attr_accessible :annualSales, :energyEfficiencyInvestment, :enterpriseId, :netIncome, :year, :maxCapacity
end
