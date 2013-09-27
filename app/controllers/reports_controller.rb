# encoding: UTF-8
class ReportsController < ApplicationController

  def full_report
    @enterprise = Enterprise.first

    @measuring_avg = MeasuringDatum.average('capacity')
    @measuring_last = MeasuringDatum.last.capacity
    @measuring_max = MeasuringDatum.maximum('capacity')
    @measuring_min = MeasuringDatum.minimum('capacity')

    data_table5 = GoogleVisualr::DataTable.new
    data_table5.new_column('string', 'Leistung')
    data_table5.new_column('number', 'Value')
    data_table5.add_rows(4)
    data_table5.set_cell(0, 0, 'min')
    data_table5.set_cell(0, 1, @measuring_min.to_i)
    data_table5.set_cell(1, 0, 'avg' )
    data_table5.set_cell(1, 1, @measuring_avg.to_i)
    data_table5.set_cell(2, 0, 'max')
    data_table5.set_cell(2, 1, @measuring_max.to_i)
    data_table5.set_cell(3, 0, 'letzte'    )
    data_table5.set_cell(3, 1, @measuring_last.to_i)

    opts5   = { :width => 500, :height => 200, :backgroundColor => "white", :min => 0, :max => 1500, :redFrom => 1400, :redTo => 1500, :yellowFrom => 1100, :yellowTo => 1400, :minorTicks => 5 }
    @chart5 = GoogleVisualr::Interactive::Gauge.new(data_table5, opts5)

    @business_data = BusinessDatum.find_all_by_enterpriseId(@enterprise.id)
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Jahr')
    data_table.new_column('number', 'Einkommen')
    data_table.new_column('number', 'Jahresumsatz')
    data_table.new_column('number', 'EE-Investment')

    @business_data.each do |data|
      data_table.add_row(["#{data.year}",data.netIncome, data.annualSales,data.energyEfficiencyInvestment])
    end

    opts = { :width => 800, :height => 300, :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)

    @production_sites = ProduktionSite.all
    @checklist_definition=ChecklistDefinition.all
    @elements = {
      :Kälteverbrauch => params[:Kälteverbrauch],
      :Druckluftverbrauch => params[:Druckluftverbrauch],
      :Heißwasserverbrauch => params[:Heißwasserverbrauch],
      :Beleuchtungsanlagen => params[:Beleuchtungsanlagen],
      :Dampfverbrauch => params[:Dampfverbrauch],
      :Thermoölverbrauch => params[:Thermoölverbrauch]
    }
    @chklist=Array.new
    i=0
    @checklist_definition.each do |chk|
      @chklist[i]= params[chk.name]
      i=i+1
    end
    
    #Beleuchtung-----------------------------------------------------------------------------------------------------------------
    @lightings = Lighting.all

    #KÄLTE-----------------------------------------------------------------------------------------------------------------------
    @cold_consumption_years = ColdConsumptionYear.all
    data_table2 = GoogleVisualr::DataTable.new
    data_table2.new_column('string', 'Jahr')
    data_table2.new_column('number', 'Volumenstrom')
    data_table2.new_column('number', 'Vorlauftemperatur')
    data_table2.new_column('number', 'Rücklauftemperatur')
    data_table2.new_column('number', 'Prozesstemperatur')
    @cold_consumption_years.each do |data|
      data_table2.add_row(["#{data.updated_at.year}",data.volumeStream, data.flowTemperature,data.returnTemperature, data.processTemperature])
    end
    opts2 = { :width => 800, :height => 300, :legend => 'bottom' }
    @chart2 = GoogleVisualr::Interactive::BarChart.new(data_table2, opts2)
    #----------------------------------------------------------------------------------------------------------------------------
    @cold_production_years = ColdProductionYear.all
    data_table3 = GoogleVisualr::DataTable.new
    data_table3.new_column('string', 'Jahr')
    data_table3.new_column('number', 'Betriebsstunden')
    data_table3.new_column('number', 'Energieverbrauch')
    data_table3.new_column('number', 'Kältemenge')
    data_table3.new_column('number', 'Massenstrom')
    data_table3.new_column('number', 'Temperatur')
    @cold_production_years.each do |data|
      data_table3.add_row(["#{data.updated_at.year}", data.operatingHours, data.energyConsumption,data.coldAmount, data.massFlow, data.flowTemperature])
    end
    opts3 = { :width => 800, :height => 300, :legend => 'bottom' }
    @chart3 = GoogleVisualr::Interactive::BarChart.new(data_table3, opts3)
    #----------------------------------------------------------------------------------------------------------------------------
    @cold_distribution_years = ColdDistributionYear.all
    data_table4 = GoogleVisualr::DataTable.new
    data_table4.new_column('string', 'Jahr')
    data_table4.new_column('number', 'Vorlauftemperatur')
    data_table4.new_column('number', 'Rücklauftemperatur')
    @cold_distribution_years.each do |data|
      data_table4.add_row(["#{data.updated_at.year}", data.flowTemperature, data.returnTemperature])
    end
    opts4 = { :width => 800, :height => 300, :legend => 'bottom' }
    @chart4 = GoogleVisualr::Interactive::BarChart.new(data_table4, opts4)
    #Kälte Ende--------------------------------------------------------------------------------------------------------------------


    #DRUCKLUFT---------------------------------------------------------------------------------------------------------------------
    #Druckluftverbrauch------------------------------------------------------------------------------------------------------------
    @compressed_air_consumption_years = CompressedAirConsumptionYear.all
    data_table8 = GoogleVisualr::DataTable.new
    data_table8.new_column('string', 'Jahr')
    data_table8.new_column('number', 'Verbrauch')
    @compressed_air_consumption_years.each do |data|
      data_table8.add_row(["#{data.year_id}", data.verbrauch])
    end
    opts8 = { :width => 800, :height => 300, :legend => 'bottom' }
    @chart8 = GoogleVisualr::Interactive::BarChart.new(data_table8, opts8)
    #----------------------------------------------------------------------------------------------------------------------------
    @compressed_air_distribution_years = CompressedAirDistributionYear.all
    #----------------------------------------------------------------------------------------------------------------------------
    operating = 0
    load = 0
    @compressed_air_production_years = CompressedAirProductionYear.all
    data_tableCAD1 = GoogleVisualr::DataTable.new
    data_tableCAD1.new_column('string', 'Jahr')
    data_tableCAD1.new_column('number', 'Betriebsstunden')
    data_tableCAD1.new_column('number', 'Laststunden')
    @compressed_air_production_years.each do |data|
      data_tableCAD1.add_row(["#{data.year_id}", data.operatingHours, data.loadHours])
    end
    optsCAD1 = { :width => 350, :height => 240, :title => 'Druckluft Auslastung in Stunden', :legend => 'bottom' }
    @chartCAD1 = GoogleVisualr::Interactive::BarChart.new(data_tableCAD1, optsCAD1)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableCAD3 = GoogleVisualr::DataTable.new
    data_tableCAD3.new_column('string', 'Jahr')
    data_tableCAD3.new_column('number', 'Stromverbrauch')
    @compressed_air_production_years.each do |data|
      data_tableCAD3.add_row(["#{data.year_id}", data.capacity])
    end
    optsCAD3 = { :width => 350, :height => 240, :title => 'Stromverbrauch Druckluft', :legend => 'bottom' }
    @chartCAD3 = GoogleVisualr::Interactive::BarChart.new(data_tableCAD3, optsCAD3)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableCAD4 = GoogleVisualr::DataTable.new
    data_tableCAD4.new_column('string', 'Jahr')
    data_tableCAD4.new_column('number', 'Fördermenge')
    @compressed_air_production_years.each do |data|
      data_tableCAD4.add_row(["#{data.year_id}", data.deliveryRate])
    end
    optsCAD4 = { :width => 350, :height => 240, :title => 'Fördermenge Druckluft', :legend => 'bottom' }
    @chartCAD4 = GoogleVisualr::Interactive::BarChart.new(data_tableCAD4, optsCAD4)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableCAD5 = GoogleVisualr::DataTable.new
    data_tableCAD5.new_column('string', 'Jahr')
    data_tableCAD5.new_column('number', 'Druckluftansaugung Temperatur (min)')
    data_tableCAD5.new_column('number', 'Druckluftansaugung Temperatur (max)')
    data_tableCAD5.new_column('number', 'Vorlauf Temperatur')
    data_tableCAD5.new_column('number', 'Rücklauf Temperatur')
    @compressed_air_production_years.each do |data|
      data_tableCAD5.add_row(["#{data.year_id}", data.pressureExhaustTempMin, data.pressureExhaustTempMax, data.advanceTemp, data.returnTemp])
    end
    optsCAD5 = { :width => 350, :height => 240, :title => 'Temperaturen Druckluft', :legend => 'bottom' }
    @chartCAD5 = GoogleVisualr::Interactive::BarChart.new(data_tableCAD5, optsCAD5)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableCAD6 = GoogleVisualr::DataTable.new
    data_tableCAD6.new_column('string', 'Jahr')
    data_tableCAD6.new_column('number', 'Wassermenge')
    @compressed_air_production_years.each do |data|
      data_tableCAD6.add_row(["#{data.year_id}", data.amount_water])
    end
    optsCAD6 = { :width => 350, :height => 240, :title => 'Kühlwassermenge', :legend => 'bottom' }
    @chartCAD6 = GoogleVisualr::Interactive::BarChart.new(data_tableCAD6, optsCAD6)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableCAD2 = GoogleVisualr::DataTable.new
    data_tableCAD2.new_column('string', 'Auslastung')
    data_tableCAD2.new_column('number', 'Wert')
    @compressed_air_production_years.each do |data|
      load = load + data.loadHours
      operating = operating + data.operatingHours
    end
    rest = 100 - (load.to_f / operating*100)
    data_tableCAD2.add_row(["Gesamte Auslastung",load.to_f / operating*100])
    data_tableCAD2.add_row(["Keine Auslastung",rest])
    optsCAD2 = { :width => 350, :height => 240, :title => 'Gesamte Druckluft Auslastung', :legend => 'bottom' }
    @chartCAD2 = GoogleVisualr::Interactive::PieChart.new(data_tableCAD2, optsCAD2)
    #----------------------------------------------------------------------------------------------------------------------------
    @compressedAirDistributionYearsLeak = CompressedAirDistributionYear.last.leak
    @compressedAirDistributionYearsLoss = CompressedAirDistributionYear.last.pressureLoss
    data_tableCAD7 = GoogleVisualr::DataTable.new
    data_tableCAD7.new_column('string', 'Text')
    data_tableCAD7.new_column('number', 'Value')
    data_tableCAD7.add_rows(4)
    data_tableCAD7.set_cell(1, 0, 'Leckage'    )
    data_tableCAD7.set_cell(1, 1, @compressedAirDistributionYearsLeak.to_i)
    data_tableCAD7.set_cell(2, 0, 'Druckverlust'    )
    data_tableCAD7.set_cell(2, 1, @compressedAirDistributionYearsLoss.to_i)
    optsCAD7   = { :width => 500, :height => 240, :backgroundColor => "white", :min => 0, :max => 100, :redFrom => 40, :redTo => 100, :yellowFrom => 20, :yellowTo => 40, :minorTicks => 5 }
    @chartCAD7 = GoogleVisualr::Interactive::Gauge.new(data_tableCAD7, optsCAD7)
    #Druckluft Ende----------------------------------------------------------------------------------------------------------------


    #HEISSWASSER-------------------------------------------------------------------------------------------------------------------
    @hot_water_consumption_years = HotWaterConsumptionYear.all
    data_tableHWC1 = GoogleVisualr::DataTable.new
    data_tableHWC1.new_column('string', 'Jahr')
    data_tableHWC1.new_column('number', 'Volumenstrom')
    @hot_water_consumption_years.each do |data|
      data_tableHWC1.add_row(["#{data.updated_at.year}", data.volumeStream])
    end
    optsHWC1 = { :width => 350, :height => 240, :title => 'Heißwasser Volumenstrom', :legend => 'bottom' }
    @chartHWC1 = GoogleVisualr::Interactive::ColumnChart.new(data_tableHWC1, optsHWC1)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableHWC2 = GoogleVisualr::DataTable.new
    data_tableHWC2.new_column('string', 'Jahr')
    data_tableHWC2.new_column('number', 'Vorlauftempertaur')
    data_tableHWC2.new_column('number', 'Rücklauftemperatur')
    data_tableHWC2.new_column('number', 'Prozesstemperatur')
    @hot_water_consumption_years.each do |data|
      data_tableHWC2.add_row(["#{data.updated_at.year}", data.flowTemperature, data.returnTemperature, data.processTemperature])
    end
    optsHWC2 = { :width => 350, :height => 240, :title => 'Heißwasser Temperatur', :legend => 'bottom' }
    @chartHWC2 = GoogleVisualr::Interactive::BarChart.new(data_tableHWC2, optsHWC2)
    #----------------------------------------------------------------------------------------------------------------------------
    @hot_water_production_years = HotWaterProductionYear.all
    data_tableHWD1 = GoogleVisualr::DataTable.new
    data_tableHWD1.new_column('string', 'Jahr')
    data_tableHWD1.new_column('number', 'Brennstoffverbrauch')
    @hot_water_production_years.each do |data|
      data_tableHWD1.add_row(["#{data.updated_at.year}", data.fuelConsumption])
    end
    optsHWD1 = { :width => 350, :height => 240, :title => 'Heißwasser Jährlicher Brennstoffverbrauch', :legend => 'bottom' }
    @chartHWD1 = GoogleVisualr::Interactive::ColumnChart.new(data_tableHWD1, optsHWD1)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableHWD2 = GoogleVisualr::DataTable.new
    data_tableHWD2.new_column('string', 'Jahr')
    data_tableHWD2.new_column('number', 'Jahresverbrauch')
    @hot_water_production_years.each do |data|
      data_tableHWD2.add_row(["#{data.updated_at.year}", data.kettleEnergyConsumption])
    end
    optsHWD2 = { :width => 350, :height => 240, :title => 'Heißwasser Jährlicher Verbauch', :legend => 'bottom' }
    @chartHWD2 = GoogleVisualr::Interactive::ColumnChart.new(data_tableHWD2, optsHWD2)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableHWD3 = GoogleVisualr::DataTable.new
    data_tableHWD3.new_column('string', 'Jahr')
    data_tableHWD3.new_column('number', 'Betriebsstunden')
    @hot_water_production_years.each do |data|
      data_tableHWD3.add_row(["#{data.updated_at.year}", data.operationHours])
    end
    optsHWD3 = { :width => 350, :height => 240, :title => 'Heißwasser Betriebsstunden', :legend => 'bottom' }
    @chartHWD3 = GoogleVisualr::Interactive::ColumnChart.new(data_tableHWD3, optsHWD3)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableHWD4 = GoogleVisualr::DataTable.new
    data_tableHWD4.new_column('string', 'Jahr')
    data_tableHWD4.new_column('number', 'Zusatzwasser')
    data_tableHWD4.new_column('number', 'Verbrennungsluft')
    data_tableHWD4.new_column('number', 'Abgas vor WRG')
    data_tableHWD4.new_column('number', 'Abgas nach WRG')
    @hot_water_production_years.each do |data|
      data_tableHWD4.add_row(["#{data.updated_at.year}", data.tempAdditionalWater, data.tempCombustionAir, data.tempExhaustBeforeWRG, data.tempExhaustAfterWRG])
    end
    optsHWD4 = { :width => 350, :height => 240, :title => 'Heißwasser Temperaturen', :legend => 'bottom' }
    @chartHWD4 = GoogleVisualr::Interactive::BarChart.new(data_tableHWD4, optsHWD4)
    #----------------------------------------------------------------------------------------------------------------------------
    @hot_water_distribution_years = HotWaterDistributionYear.all
    data_tableHWD5 = GoogleVisualr::DataTable.new
    data_tableHWD5.new_column('string', 'Jahr')
    data_tableHWD5.new_column('number', 'Vorlauf Temperatur')
    data_tableHWD5.new_column('number', 'Rücklauf Temperatur')
    @hot_water_distribution_years.each do |data|
      data_tableHWD5.add_row(["#{data.updated_at.year}", data.flowTemperature, data.returnTemperature])
    end
    optsHWD5 = { :width => 350, :height => 240, :title => 'Heißwasserverteilung: Temperaturen', :legend => 'bottom' }
    @chartHWD5 = GoogleVisualr::Interactive::BarChart.new(data_tableHWD5, optsHWD5)
    #----------------------------------------------------------------------------------------------------------------------------
    data_tableHWD6 = GoogleVisualr::DataTable.new
    data_tableHWD6.new_column('string', 'Jahr')
    data_tableHWD6.new_column('number', 'Druck')
    @hot_water_distribution_years.each do |data|
      data_tableHWD6.add_row(["#{data.updated_at.year}", data.compression])
    end
    optsHWD6 = { :width => 350, :height => 240, :title => 'Heißwasserverteilung: Druck', :legend => 'bottom' }
    @chartHWD6 = GoogleVisualr::Interactive::ColumnChart.new(data_tableHWD6, optsHWD6)
    #Heißwasser Ende-------------------------------------------------------------------------------------------------------------
    
    #DAMPF-----------------------------------------------------------------------------------------------------------------------
    #DAMPFVERBRAUCH--------------------------------------------------------------------------------------------------------------
    @steam_consumptions = SteamConsumption.all

    #DAMPFVERTEILUNG-------------------------------------------------------------------------------------------------------------
    @steam_distribution_years = SteamDistributionYear.all
    data_tableSD1 = GoogleVisualr::DataTable.new
    data_tableSD1.new_column('string', 'Jahr')
    data_tableSD1.new_column('number', 'DP Druck')
    data_tableSD1.new_column('number', 'KP Druck')
    @steam_distribution_years.each do |data|
      data_tableSD1.add_row(["#{data.updated_at.year}", data.dpCompression, data.kpCompression])
    end
    optsSD1 = { :width => 350, :height => 240, :title => 'Dampf Druck', :legend => 'bottom' }
    @chartSD1 = GoogleVisualr::Interactive::ColumnChart.new(data_tableSD1, optsSD1)

    data_tableSD2 = GoogleVisualr::DataTable.new
    data_tableSD2.new_column('string', 'Jahr')
    data_tableSD2.new_column('number', 'DP Tempertaur')
    data_tableSD2.new_column('number', 'KP Temperatur')
    @steam_distribution_years.each do |data|
      data_tableSD2.add_row(["#{data.updated_at.year}", data.dpTemperature, data.kpTemperature])
    end
    optsSD2 = { :width => 350, :height => 240, :title => 'Dampf Temperatur', :legend => 'bottom' }
    @chartSD2 = GoogleVisualr::Interactive::BarChart.new(data_tableSD2, optsSD2)

    #DAMPFPRODUKTION-------------------------------------------------------------------------------------------------------------
    @steam_production_years = SteamProductionYear.all
    data_tableSP1 = GoogleVisualr::DataTable.new
    data_tableSP1.new_column('string', 'Jahr')
    data_tableSP1.new_column('number', 'Brennstoffverbrauch')
    @steam_production_years.each do |data|
      data_tableSP1.add_row(["#{data.year_id}", data.fuelConsumption])
    end
    optsSP1 = { :width => 350, :height => 240, :title => 'Dampf Jährlicher Brennstoffverbrauch', :legend => 'bottom' }
    @chartSP1 = GoogleVisualr::Interactive::ColumnChart.new(data_tableSP1, optsSP1)

    data_tableSP2 = GoogleVisualr::DataTable.new
    data_tableSP2.new_column('string', 'Jahr')
    data_tableSP2.new_column('number', 'Jahresverbrauch')
    @steam_production_years.each do |data|
      data_tableSP2.add_row(["#{data.year_id}", data.kettleEnergyConsumption])
    end
    optsSP2 = { :width => 350, :height => 240, :title => 'Dampf Jährlicher Energieverbrauch', :legend => 'bottom' }
    @chartSP2 = GoogleVisualr::Interactive::ColumnChart.new(data_tableSP2, optsSP2)

    data_tableSP3 = GoogleVisualr::DataTable.new
    data_tableSP3.new_column('string', 'Jahr')
    data_tableSP3.new_column('number', 'Betriebsstunden')
    @steam_production_years.each do |data|
      data_tableSP3.add_row(["#{data.year_id}", data.operationHours])
    end
    optsSP3 = { :width => 350, :height => 240, :title => 'Dampf Jährliche Betriebsstunden', :legend => 'bottom' }
    @chartSP3 = GoogleVisualr::Interactive::ColumnChart.new(data_tableSP3, optsSP3)

    data_tableSP4 = GoogleVisualr::DataTable.new
    data_tableSP4.new_column('string', 'Jahr')
    data_tableSP4.new_column('number', 'Jahresdampfmenge')
    @steam_production_years.each do |data|
      data_tableSP4.add_row(["#{data.year_id}", data.steamAmount])
    end
    optsSP4 = { :width => 350, :height => 240, :title => 'Jahresdampfmenge', :legend => 'bottom' }
    @chartSP4 = GoogleVisualr::Interactive::ColumnChart.new(data_tableSP4, optsSP4)

    data_tableSP5 = GoogleVisualr::DataTable.new
    data_tableSP5.new_column('string', 'Jahr')
    data_tableSP5.new_column('number', 'Zusatzwasser')
    data_tableSP5.new_column('number', 'Verbrennungsluft')
    data_tableSP5.new_column('number', 'Abgas vor WRG')
    data_tableSP5.new_column('number', 'Abgas nach WRG')
    @steam_production_years.each do |data|
      data_tableSP5.add_row(["#{data.year_id}", data.tempAdditionalWater, data.tempCombustionAir, data.tempExhaustBeforeWRG, data.tempExhaustAfterWRG])
    end
    optsSP5 = { :width => 350, :height => 240, :title => 'Jahresdampfmenge', :legend => 'bottom' }
    @chartSP5 = GoogleVisualr::Interactive::BarChart.new(data_tableSP5, optsSP5)

    data_tableSP6 = GoogleVisualr::DataTable.new
    data_tableSP6.new_column('string', 'Jahr')
    data_tableSP6.new_column('number', 'CO2-Gehalt Abgas')
    @steam_production_years.each do |data|
      data_tableSP6.add_row(["#{data.year_id}", data.carbonDioxideExhaust])
    end
    optsSP6 = { :width => 350, :height => 240, :title => 'CO2-Gehalt Abgas', :legend => 'bottom' }
    @chartSP6 = GoogleVisualr::Interactive::ColumnChart.new(data_tableSP6, optsSP6)
    #DAMPF ENDE------------------------------------------------------------------------------------------------------------------
    
    #THERMOÖL--------------------------------------------------------------------------------------------------------------------
    #THERMOÖLVERBRAUCH-----------------------------------------------------------------------------------------------------------
    @thermo_oil_consumption_years = ThermoOilConsumptionYear.all
    data_tableTOC1 = GoogleVisualr::DataTable.new
    data_tableTOC1.new_column('string', 'Jahr')
    data_tableTOC1.new_column('number', 'Volumenstrom')
    @thermo_oil_consumption_years.each do |data|
      data_tableTOC1.add_row(["#{data.updated_at.year}", data.volumeStream])
    end
    optsTOC1 = { :width => 350, :height => 240, :title => 'Thermoöl Volumenstrom', :legend => 'bottom' }
    @chartTOC1 = GoogleVisualr::Interactive::ColumnChart.new(data_tableTOC1, optsTOC1)

    data_tableTOC2 = GoogleVisualr::DataTable.new
    data_tableTOC2.new_column('string', 'Jahr')
    data_tableTOC2.new_column('number', 'Vorlauftempertaur')
    data_tableTOC2.new_column('number', 'Rücklauftemperatur')
    data_tableTOC2.new_column('number', 'Prozesstemperatur')
    @thermo_oil_consumption_years.each do |data|
      data_tableTOC2.add_row(["#{data.updated_at.year}", data.flowTemperature, data.returnTemperature, data.processTemperature])
    end
    optsTOC2 = { :width => 350, :height => 240, :title => 'Thermoöl Temperatur', :legend => 'bottom' }
    @chartTOC2 = GoogleVisualr::Interactive::BarChart.new(data_tableTOC2, optsTOC2)

    #THERMOÖLPRODUKTION----------------------------------------------------------------------------------------------------------
    @thermo_oil_production_years = ThermoOilProductionYear.all
    data_tableTOP1 = GoogleVisualr::DataTable.new
    data_tableTOP1.new_column('string', 'Jahr')
    data_tableTOP1.new_column('number', 'Brennstoffverbrauch')
    @thermo_oil_production_years.each do |data|
      data_tableTOP1.add_row(["#{data.updated_at.year}", data.fuelConsumption])
    end
    optsTOP1 = { :width => 350, :height => 240, :title => 'Themoöl Jährlicher Brennstoffverbrauch', :legend => 'bottom' }
    @chartTOP1 = GoogleVisualr::Interactive::ColumnChart.new(data_tableTOP1, optsTOP1)

    data_tableTOP2 = GoogleVisualr::DataTable.new
    data_tableTOP2.new_column('string', 'Jahr')
    data_tableTOP2.new_column('number', 'Jahresverbrauch')
    @thermo_oil_production_years.each do |data|
      data_tableTOP2.add_row(["#{data.updated_at.year}", data.kettleEnergyConsumption])
    end
    optsTOP2 = { :width => 350, :height => 240, :title => 'Thermoöl Jährlicher Verbauch', :legend => 'bottom' }
    @chartTOP2 = GoogleVisualr::Interactive::ColumnChart.new(data_tableTOP2, optsTOP2)

    data_tableTOP3 = GoogleVisualr::DataTable.new
    data_tableTOP3.new_column('string', 'Jahr')
    data_tableTOP3.new_column('number', 'Betriebsstunden')
    @thermo_oil_production_years.each do |data|
      data_tableTOP3.add_row(["#{data.updated_at.year}", data.operatingHours])
    end
    optsTOP3 = { :width => 350, :height => 240, :title => 'Thermoöl Betriebsstunden', :legend => 'bottom' }
    @chartTOP3 = GoogleVisualr::Interactive::ColumnChart.new(data_tableTOP3, optsTOP3)

    data_tableTOP4 = GoogleVisualr::DataTable.new
    data_tableTOP4.new_column('string', 'Jahr')
    data_tableTOP4.new_column('number', 'Zusatzwasser')
    data_tableTOP4.new_column('number', 'Verbrennungsluft')
    data_tableTOP4.new_column('number', 'Abgas vor WRG')
    data_tableTOP4.new_column('number', 'Abgas nach WRG')
    data_tableTOP4.new_column('number', 'CO2-Gehalt Abgas')
    @thermo_oil_production_years.each do |data|
      data_tableTOP4.add_row(["#{data.updated_at.year}", data.tempAdditionalWater, data.tempCombustionAir, data.tempExhaustBeforeWRG, data.tempExhaustAfterWRG, data.carbonDioxideExhaust])
    end
    optsTOP4 = { :width => 350, :height => 240, :title => 'Thermoöl Temperaturen', :legend => 'bottom' }
    @chartTOP4 = GoogleVisualr::Interactive::BarChart.new(data_tableTOP4, optsTOP4)

    #THERMOÖLVERTEILUNG----------------------------------------------------------------------------------------------------------
    @thermo_oil_distribution_years = ThermoOilDistributionYear.all
    data_tableTOD1 = GoogleVisualr::DataTable.new
    data_tableTOD1.new_column('string', 'Jahr')
    data_tableTOD1.new_column('number', 'Vorlauf Temperatur')
    data_tableTOD1.new_column('number', 'Rücklauf Temperatur')
    @thermo_oil_distribution_years.each do |data|
      data_tableTOD1.add_row(["#{data.updated_at.year}", data.flowTemperature, data.returnTemperature])
    end
    optsTOD1 = { :width => 350, :height => 240, :title => 'Thermoölverteilung: Temperaturen', :legend => 'bottom' }
    @chartTOD1 = GoogleVisualr::Interactive::BarChart.new(data_tableTOD1, optsTOD1)

    data_tableTOD2 = GoogleVisualr::DataTable.new
    data_tableTOD2.new_column('string', 'Jahr')
    data_tableTOD2.new_column('number', 'Druck')
    @thermo_oil_distribution_years.each do |data|
      data_tableTOD2.add_row(["#{data.updated_at.year}", data.compression])
    end
    optsTOD2 = { :width => 350, :height => 240, :title => 'Thermoölverteilung: Druck', :legend => 'bottom' }
    @chartTOD2 = GoogleVisualr::Interactive::ColumnChart.new(data_tableTOD2, optsTOD2)
    #THERMOÖL ENDE---------------------------------------------------------------------------------------------------------------

    respond_to do |format|
      format.html # full_report.html.erb
      format.pdf {
        html = render_to_string(:layout => 'report',:action=>'full_report')
        kit = PDFKit.new(html)
        send_data(kit.to_pdf, :type => 'application/pdf', :disposition => 'inline')
      }
      format.json { render json: @enterprise}
      format.json { render json: @business_data }
      format.json { render json: @production_sites }
      format.json { render json: @elements }
      format.json { render json: @checklist_definition}
      format.json { render json: @chklist }
      format.json { render json: @cold_consumption_years }
      format.json { render json: @cold_production_years }
      format.json { render json: @cold_distribution_years }
      format.json { render json: @compressed_air_consumption_years }
      format.json { render json: @compressed_air_distribution_years }
      format.json { render json: @compressed_air_production_years }
      format.json { render json: @hot_water_consumption_years }
      format.json { render json: @hot_water_distribution_years }
      format.json { render json: @hot_water_production_years }
      format.json { render json: @lightings }
      format.json { render json: @steam_consumptions }
      format.json { render json: @steam_distribution_years }
      format.json { render json: @steam_production_years }
      format.json { render json: @thermo_oil_consumption_years }
      format.json { render json: @thermo_oil_distribution_years }
      format.json { render json: @thermo_oil_production_years }

    end
  end

  def norm_reportpdf
    css_path = Rails.root.to_s+"/app/assets/stylesheets/"
    html = render_to_string(:layout => 'report',:action=>'norm_reportpdf')
    kit = PDFKit.new(html)
    kit.stylesheets<< css_path+'report-static.css'
    send_data(kit.to_pdf, :type => 'application/pdf', :disposition => 'inline')
  end

  def reportpdf
    css_path=Rails.root.to_s+"/app/assets/stylesheets/"
    html = render_to_string(:layout => 'report',:action=>'reportpdf')
    kit = PDFKit.new(html)
    kit.stylesheets<< css_path+'report.css'
    send_data(kit.to_pdf, :type => 'application/pdf', :disposition => 'inline')
  end

  def report
    respond_to do |format|
      format.html # full_report.html.erb
      format.pdf {
        render :text => PDFKit.new(post_url(@post)).to_pdf
      }
    end
  end

  def lastenmanagementpdf
    css_path = Rails.root.to_s+"/app/assets/stylesheets/"
    html = render_to_string(:layout => 'report',:action=>'lastenmanagementpdf')
    kit = PDFKit.new(html)
    #    kit = PDFKit.new(html,:header_center=>'header',:footer_center=>'footer')
    kit.stylesheets<< css_path+'report-static.css'
    send_data(kit.to_pdf, :type => 'application/pdf', :disposition => 'inline')
  end

end
