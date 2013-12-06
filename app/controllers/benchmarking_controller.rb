class BenchmarkingController < ApplicationController
    
  def index
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @branch = Branch.find(@enterprise.branch_id)
    @businessDatum = BusinessDatum.find_by_enterpriseId(@enterprise.id)

    #Finde den Stromvertrag des Unternehmens
    @contractEnergy = Contract.find_by_enterprise_id_and_energy_type_id(@enterprise.id, EnergyType::ELECTRICITY)
    
    #Finde alle Abrechnungen zu diesem Vertrag und berechne Gesamtkosten und Gesamtverbrauch für dieses Jahr
    @billsEnergy = Bill.find_all_by_contract_id_and_year(@contractEnergy.id, Time.now.year-1)
    @sumBillsEnergyConsumption  = @billsEnergy.map{|h| h['consumption']}.reduce(0, :+)
    @sumBillsEnergyValue  = @billsEnergy.map{|h| h['value']}.reduce(0, :+)
    
    #Finde alle vorletzten Abrechnungen zu diesem Vertrag und berechne Gesamtkosten und Gesamtverbrauch für dieses Jahr
    @billsEnergyAgo = Bill.find_all_by_contract_id_and_year(@contractEnergy.id, Time.now.year-2)
    @sumBillsEnergyConsumptionAgo  = @billsEnergyAgo.map{|h| h['consumption']}.reduce(0, :+)
    @sumBillsEnergyValueAgo  = @billsEnergyAgo.map{|h| h['value']}.reduce(0, :+)
    
    #Finde die Mitarbeiteranzahl aus diesem Jahr
    @employees = BusinessDatum.find_by_year(Time.now.year-1).employees
    #Finde die Mitarbeiteranzahl aus dem letzten Jahr
    @employeesAgo = BusinessDatum.find_by_year(Time.now.year-2).employees
    
    #Finde alle Räume des Unternehmens
    @locationsEnergy = Location.find_all_by_enterprise_id(@enterprise.id)
    
    #Finde alle Räume und berechne die Gesamtfläche
    @locations = Location.find_all_by_enterprise_id(@enterprise.id)
    @sumLocations  = @locations.map{|h| h['squaremeter']}.reduce(0, :+)
    logger.info("---------------------#{@sumLocations}")
    
    #Finde den Umsatz aus dem letzten Jahr
    @annualSale = BusinessDatum.find_by_year(Time.now.year-1).annualSales
    #Finde den Umsatz aus dem letzten Jahr
    @annualSaleAgo = BusinessDatum.find_by_year(Time.now.year-2).annualSales

    #Finde die Einnahmen aus dem letzten Jahr
    @income = BusinessDatum.find_by_year(Time.now.year-1).netIncome
    #Finde die Einnahmen aus dem vorletzten Jahr
    @incomeAgo = BusinessDatum.find_by_year(Time.now.year-2).netIncome
    
    @groupEV = Array.new
    @groupQV = Array.new
    @groupKV = Array.new
    @groupUV = Array.new
    @groupIV = Array.new
    @groupEC = Array.new
    @groupQC = Array.new
    @groupKC = Array.new
    @groupUC = Array.new
    @groupIC = Array.new
    
    # Finde alle Stromverträge
    @allContracts = Contract.find_all_by_energy_type_id(EnergyType::ELECTRICITY)
    
    # Finde alle Rechnungen zu den Stromverträgen und berechne Topliste für alle Kennzahlen
    @allContracts.each do |allContracts|
      @bills = Bill.find_all_by_contract_id_and_year(allContracts.id, Time.now.year - 1)
      @bills.each do |bill|
        # Berechne Kennzahl Mitarbeiter E/Stromkosten V/Stromverbrauch C
        employee = BusinessDatum.find_by_enterpriseId_and_year(allContracts.enterprise_id, Time.now.year - 1).employees
        numberEV = bill.value / employee
        @groupEV << BenchmarkNumber.create(:number => numberEV, :enterprise_id => allContracts.enterprise_id)
        numberEC = bill.consumption / employee
        @groupEC << BenchmarkNumber.create(:number => numberEC, :enterprise_id => allContracts.enterprise_id)
        # Berechne Kennzahl Quadratmeter Q/Stromkosten V/Stromverbrauch C
        sqm = Location.find_all_by_enterprise_id(allContracts.enterprise_id)
        sqmSum  = sqm.map{|h| h['squaremeter']}.reduce(0, :+)
        numberQV = bill.value / sqmSum
        @groupQV << BenchmarkNumber.create(:number => numberQV, :enterprise_id => allContracts.enterprise_id)
        numberQC = bill.consumption / sqmSum
        @groupQC << BenchmarkNumber.create(:number => numberQC, :enterprise_id => allContracts.enterprise_id)
        # Berechne Kennzahl Kubikmeter K/Stromkosten V/Stromverbrauch C
        sum=0
        sqm.each do |sqm|
          sum = sum + (sqm.squaremeter * sqm.height)
        end
        numberKV = bill.value / sum
        @groupKV << BenchmarkNumber.create(:number => numberKV, :enterprise_id => allContracts.enterprise_id)
        numberKC = bill.consumption / sum
        @groupKC << BenchmarkNumber.create(:number => numberKC, :enterprise_id => allContracts.enterprise_id)
        # Berechne Kennzahl Umsatz U/Stromkosten V/Stromverbrauch C
        annual = BusinessDatum.find_by_enterpriseId_and_year(allContracts.enterprise_id, Time.now.year - 1).annualSales
        numberUV = bill.value / annual
        @groupUV << BenchmarkNumber.create(:number => numberUV, :enterprise_id => allContracts.enterprise_id)
        numberUC = bill.consumption / annual
        @groupUC << BenchmarkNumber.create(:number => numberUC, :enterprise_id => allContracts.enterprise_id)
        # Berechne Kennzahl Einkommen I/Stromkosten V/Stromverbrauch C
        income = BusinessDatum.find_by_enterpriseId_and_year(allContracts.enterprise_id, Time.now.year - 1).netIncome
        numberIV = bill.value / income
        @groupIV << BenchmarkNumber.create(:number => numberIV, :enterprise_id => allContracts.enterprise_id)
        numberIC = bill.consumption / income
        @groupIC << BenchmarkNumber.create(:number => numberIC, :enterprise_id => allContracts.enterprise_id)
      end
    end
    @groupEV.sort_by{|k| k[1]}
    @groupQV.sort_by{|k| k[1]}
    @groupKV.sort_by{|k| k[1]}
    @groupUV.sort_by{|k| k[1]}
    @groupIV.sort_by{|k| k[1]}
    @groupEC.sort_by{|k| k[1]}
    @groupQC.sort_by{|k| k[1]}
    @groupKC.sort_by{|k| k[1]}
    @groupUC.sort_by{|k| k[1]}
    @groupIC.sort_by{|k| k[1]}
    
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