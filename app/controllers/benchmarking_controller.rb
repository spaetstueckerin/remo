class BenchmarkingController < ApplicationController
    
  def index
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @branch = Branch.find(@enterprise.branch_id)
    @businessDatum = BusinessDatum.find_by_enterpriseId(@enterprise.id)

    #Finde den Stromvertrag des Unternehmens
    @contractEnergy = Contract.find_by_enterprise_id_and_energy_type(@enterprise.id, "Strom")
    
    #Finde die Mitarbeiteranzahl aus diesem Jahr
    @employees = BusinessDatum.find_by_year(Time.now.year-1).employees
    #Finde die Mitarbeiteranzahl aus dem letzten Jahr
    @employeesAgo = BusinessDatum.find_by_year(Time.now.year-2).employees
    
    #Finde alle Abrechnungen zu diesem Vertrag und berechne Gesamtkosten und Gesamtverbrauch für dieses Jahr
    @billsEnergy = Bill.find_all_by_contract_id_and_year(@contractEnergy.id, Time.now.year-1)
    @sumBillsEnergyConsumption  = @billsEnergy.map{|h| h['consumption']}.reduce(0, :+)
    @sumBillsEnergyValue  = @billsEnergy.map{|h| h['value']}.reduce(0, :+)
    
    #Finde alle vorletzten Abrechnungen zu diesem Vertrag und berechne Gesamtkosten und Gesamtverbrauch für dieses Jahr
    @billsEnergyAgo = Bill.find_all_by_contract_id_and_year(@contractEnergy.id, Time.now.year-2)
    @sumBillsEnergyConsumptionAgo  = @billsEnergyAgo.map{|h| h['consumption']}.reduce(0, :+)
    @sumBillsEnergyValueAgo  = @billsEnergyAgo.map{|h| h['value']}.reduce(0, :+)
    
    #Finde alle Räume und berechne die Gesamtfläche
    @locations = Location.find_all_by_enterprise_id(@enterprise.id)
    @sumLocations  = @locations.map{|h| h['squaremeter']}.reduce(0, :+)
    
    #Finde alle Räume des Unternehmens
    @locationsEnergy = Location.find_all_by_enterprise_id(@enterprise.id)
    
    #Finde den Umsatz aus dem letzten Jahr
    @annualSale = BusinessDatum.find_by_year(Time.now.year-1).annualSales
    #Finde den Umsatz aus dem letzten Jahr
    @annualSaleAgo = BusinessDatum.find_by_year(Time.now.year-2).annualSales

    #Finde die Einnahmen aus dem letzten Jahr
    @income = BusinessDatum.find_by_year(Time.now.year-1).netIncome
    #Finde die Einnahmen aus dem vorletzten Jahr
    @incomeAgo = BusinessDatum.find_by_year(Time.now.year-2).netIncome
    
    #Ermittle den Papierverbrauch aus dem letztem und vorletztem Jahr
    @paper = ProductionDatum.find_by_year(Time.now.year-1).paperUsage
    @paperAgo = ProductionDatum.find_by_year(Time.now.year-2).paperUsage
    
    #Ermittle den Farbverbrauch aus dem letztem und vorletztem Jahr
    @ink = ProductionDatum.find_by_year(Time.now.year-1).inkUsage
    @inkAgo = ProductionDatum.find_by_year(Time.now.year-2).inkUsage
    
    #Ermittle den Betriebsmittelverbrauch aus dem letztem und vorletztem Jahr
    @utilities = ProductionDatum.find_by_year(Time.now.year-1).utilities
    @utilitiesAgo = ProductionDatum.find_by_year(Time.now.year-2).utilities
    
    #Ermittle die Zahl der Aufträge aus dem letztem und vorletztem Jahr
    @orders = ProductionDatum.find_by_year(Time.now.year-1).orders
    @ordersAgo = ProductionDatum.find_by_year(Time.now.year-2).orders
    
    #Ermittle die Zahl der Kunden aus dem letztem und vorletztem Jahr
    @clients = ProductionDatum.find_by_year(Time.now.year-1).clients
    @clientsAgo = ProductionDatum.find_by_year(Time.now.year-2).clients

  end  
end