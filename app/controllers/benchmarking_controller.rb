class BenchmarkingController < ApplicationController
  
  def index
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @branch = Branch.find(@enterprise.branch_id)
    @businessDatum = BusinessDatum.find_by_enterpriseId(@enterprise.id)
    
    @contractEnergy = Contract.find_by_enterprise_id_and_energy_type(@enterprise.id, "Strom")
    billsEnergy = Bill.find_all_by_contract_id(@contractEnergy.id)
    @sumEnergy  = billsEnergy.map{|e| e['consumption']}.reduce(0, :+)
    
    @contractHeat = Contract.find_by_enterprise_id_and_energy_type(@enterprise.id, "Heizung")
    billsHeat = Bill.find_all_by_contract_id(@contractHeat.id)
    @sumHeat  = billsHeat.map{|h| h['consumption']}.reduce(0, :+)

    @contractGas = Contract.find_by_enterprise_id_and_energy_type(@enterprise.id, "Gas")
    billsGas = Bill.find_all_by_contract_id(@contractGas.id)
    @sumGas  = billsGas.map{|g| g['consumption']}.reduce(0, :+)

  end
end