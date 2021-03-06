# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131211074649) do

  create_table "benchmark_numbers", :force => true do |t|
    t.float    "number"
    t.integer  "enterprise_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "bills", :force => true do |t|
    t.decimal  "value"
    t.decimal  "consumption"
    t.date     "date"
    t.date     "period_from"
    t.date     "period_to"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "contract_id"
    t.integer  "enterpriseId"
    t.integer  "meterId"
    t.integer  "year"
  end

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "buildings", :force => true do |t|
    t.integer  "site_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "business_data", :force => true do |t|
    t.integer  "enterpriseId"
    t.integer  "year"
    t.decimal  "annualSales"
    t.decimal  "netIncome"
    t.decimal  "energyEfficiencyInvestment"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.decimal  "productCosts"
    t.decimal  "maxCapacity"
    t.integer  "employees"
  end

  create_table "checklist_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "checklist_definition_id"
    t.integer  "category_order"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "checklist_category_items", :force => true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "checklist_category_id"
    t.integer  "checklist_definition_id"
    t.integer  "item_order"
    t.text     "item_head"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "checklist_definitions", :force => true do |t|
    t.string   "name"
    t.string   "checktype"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "checklist_properties", :force => true do |t|
    t.string   "ausgefullt_von"
    t.date     "datum"
    t.string   "name_unternehmen"
    t.string   "branche_unternehmen"
    t.text     "adresse_unternehmen"
    t.string   "telefonnummer_unternehmen"
    t.string   "name_kontaktpersonenergie"
    t.string   "positionimunternehmen_kontaktpersonenergie"
    t.string   "telefonnummer_kontaktpersonenergie"
    t.string   "email_kontaktpersonenergie"
    t.text     "notizen"
    t.integer  "checklist_definition_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "checklists", :force => true do |t|
    t.boolean  "boolean_value"
    t.string   "string_value"
    t.integer  "checklist_category_item_id"
    t.integer  "checklist_property_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "cold_consumption_years", :force => true do |t|
    t.decimal  "volumeStream"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.decimal  "processTemperature"
    t.integer  "coldConsumption_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "cold_consumptions", :force => true do |t|
    t.integer  "machinery_id"
    t.integer  "coldProduction_id"
    t.decimal  "profitCapacity"
    t.string   "requirementType"
    t.integer  "coldDistribution_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "cold_demands", :force => true do |t|
    t.time     "timeFrom"
    t.time     "timeTo"
    t.date     "demandDate"
    t.integer  "coldConsumptionYear_id"
    t.integer  "machinery_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "cold_distribution_years", :force => true do |t|
    t.decimal  "compression"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.integer  "coldConsumption_id"
    t.integer  "coldProduction_id"
    t.integer  "coldDistribution_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "cold_distributions", :force => true do |t|
    t.integer  "coldProduction_id"
    t.integer  "coldConsumer_id"
    t.decimal  "aperture"
    t.decimal  "isolation"
    t.decimal  "length"
    t.decimal  "volumeStreamNenn"
    t.decimal  "volumeStreamMin"
    t.decimal  "volumeStreamMax"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "cold_production_years", :force => true do |t|
    t.integer  "operatingHours"
    t.decimal  "energyConsumption"
    t.decimal  "coldAmount"
    t.decimal  "massFlow"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.decimal  "temperatureIn"
    t.decimal  "temperatureOut"
    t.decimal  "waterRequirement"
    t.integer  "coldProduction_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "cold_productions", :force => true do |t|
    t.string   "manufacturer"
    t.string   "buildType"
    t.integer  "yearOfManufacturing"
    t.decimal  "capacity"
    t.decimal  "coolingCapacity"
    t.string   "coolingMedium"
    t.string   "rkWayOfCooling"
    t.string   "rkCoolingMedium"
    t.decimal  "rkCapacity"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
  end

  create_table "compressed_air_consumers", :force => true do |t|
    t.integer  "machinery_id"
    t.integer  "compressor_id"
    t.decimal  "neededPressureSettling"
    t.string   "neededQuality"
    t.decimal  "volumeStreamNom"
    t.decimal  "volumeStreamMin"
    t.decimal  "volumeStreamMax"
    t.string   "requirementType"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "compressed_air_production_basic_id"
  end

  create_table "compressed_air_consumption_years", :force => true do |t|
    t.decimal  "verbrauch"
    t.integer  "year_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "compressed_air_consumer_id"
    t.integer  "compressor_id"
  end

  create_table "compressed_air_demands", :force => true do |t|
    t.time     "timeFrom"
    t.time     "timeTo"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "compressed_air_consumer_id"
    t.date     "demandDate"
    t.integer  "year_id"
  end

  create_table "compressed_air_distribution_years", :force => true do |t|
    t.integer  "leak"
    t.decimal  "pressureLoss"
    t.integer  "year_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "compressor_id"
  end

  create_table "compressed_air_distributions", :force => true do |t|
    t.integer  "compressor_id"
    t.string   "manufacturer"
    t.integer  "yearOfManufacturing"
    t.decimal  "capacity"
    t.string   "compressedAirDryerType"
    t.string   "addons"
    t.decimal  "volume"
    t.integer  "location_id"
    t.integer  "leak"
    t.decimal  "pressureLoss"
    t.decimal  "mainline"
    t.decimal  "stubline"
    t.decimal  "branchline"
    t.decimal  "mainlineL"
    t.decimal  "stublineL"
    t.decimal  "branchlineL"
    t.string   "material"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "compressed_air_production_years", :force => true do |t|
    t.integer  "operatingHours"
    t.integer  "loadHours"
    t.integer  "capacity"
    t.decimal  "energyConsumption"
    t.decimal  "deliveryRate"
    t.integer  "operatingCycles"
    t.integer  "overtravelTimeIdle"
    t.decimal  "pressureMin"
    t.decimal  "pressureExhaustTempMin"
    t.decimal  "pressureExhaustTempMax"
    t.decimal  "advanceTemp"
    t.decimal  "returnTemp"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "year_id"
    t.decimal  "amount_water"
    t.integer  "compressedAirProduction_id"
  end

  create_table "compressed_air_productions", :force => true do |t|
    t.string   "manufacturer"
    t.string   "version"
    t.integer  "yearOfManufacturing"
    t.decimal  "capacity"
    t.decimal  "nominalDeliveryRate"
    t.decimal  "pressureSettling"
    t.decimal  "raisingPressure"
    t.decimal  "breakPressure"
    t.string   "loadCharacter"
    t.string   "facilityCharacter"
    t.integer  "location_id"
    t.boolean  "speedRegulation"
    t.boolean  "higherControl"
    t.text     "support"
    t.boolean  "redundancyRequirements"
    t.text     "pressureExhaust"
    t.string   "coolingMedium"
    t.string   "airFrom"
    t.string   "airWhere"
    t.boolean  "heatRecovery"
    t.string   "heatApplicationArea"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
  end

  create_table "contracts", :force => true do |t|
    t.integer  "energy_type_id", :limit => 255
    t.text     "description"
    t.string   "condition"
    t.date     "duration_from"
    t.date     "duration_to"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "enterprise_id"
    t.string   "supplier"
    t.integer  "contractNo"
  end

  create_table "energy_data", :force => true do |t|
    t.decimal  "value"
    t.integer  "year"
    t.integer  "enterprise_id"
    t.integer  "edt_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "energy_goal_concepts", :force => true do |t|
    t.string   "energy_goal_concept"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "energy_goal_measures", :force => true do |t|
    t.string   "energy_goal_measure"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "energy_goal_types", :force => true do |t|
    t.string   "energy_goal_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "energy_goals", :force => true do |t|
    t.string   "name"
    t.date     "from_date"
    t.date     "to_date"
    t.float    "from_value",     :default => 0.0
    t.float    "to_value",       :default => 0.0
    t.float    "mean_value",     :default => 0.0
    t.float    "last_value",     :default => 0.0
    t.integer  "energy_type_id"
    t.integer  "concept_id"
    t.float    "value"
    t.integer  "measure_id"
    t.integer  "goal_id"
    t.integer  "checklist_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "status",         :default => true
  end

  create_table "energy_mixes", :force => true do |t|
    t.string   "energyType"
    t.decimal  "value"
    t.integer  "contractId"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.decimal  "renewableEEG"
    t.decimal  "renewableOther"
    t.decimal  "brownCoal"
    t.decimal  "nuclear"
    t.decimal  "naturalGas"
    t.decimal  "mineralOil"
    t.decimal  "photovoltaics"
    t.decimal  "waterPower"
    t.decimal  "biomass"
    t.decimal  "wind"
    t.decimal  "stoneCoal"
    t.decimal  "other"
  end

  create_table "energy_types", :force => true do |t|
    t.string   "energy_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "energy_measure"
  end

  create_table "enterprise_data", :force => true do |t|
    t.decimal  "value"
    t.integer  "year"
    t.integer  "enterprise_id"
    t.integer  "endt_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "enterprises", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.integer  "zip"
    t.string   "city",       :limit => nil
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "country"
    t.string   "email"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "branch_id"
  end

  create_table "floor_plans", :force => true do |t|
    t.integer  "building_id"
    t.string   "description"
    t.text     "sketch"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hot_water_consumption_years", :force => true do |t|
    t.integer  "hotWaterProduction_id"
    t.integer  "machinery_id"
    t.decimal  "volumeStream"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.decimal  "processTemperature"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "hot_water_consumptions", :force => true do |t|
    t.integer  "hotWaterProduction_id"
    t.integer  "machinery_id"
    t.decimal  "useCapacity"
    t.string   "requirementType"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "hot_water_demands", :force => true do |t|
    t.time     "time_from"
    t.time     "time_to"
    t.date     "demandDate"
    t.integer  "hotWaterConsumption_id"
    t.integer  "year_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "hot_water_distribution_years", :force => true do |t|
    t.decimal  "compression"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.integer  "hotWaterProduction_id"
    t.integer  "hotWaterConsumption_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "hotWaterDistribution_id"
  end

  create_table "hot_water_distributions", :force => true do |t|
    t.integer  "hotWaterProduction_id"
    t.integer  "hotWaterConsumption_id"
    t.decimal  "aperture"
    t.decimal  "isolation"
    t.decimal  "length"
    t.decimal  "volumeFlowNenn"
    t.decimal  "volumeFlowMin"
    t.decimal  "volumeFlowMax"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "hot_water_production_years", :force => true do |t|
    t.integer  "hotWaterProduction_id"
    t.decimal  "fuelConsumption"
    t.decimal  "kettleEnergyConsumption"
    t.integer  "operationHours"
    t.decimal  "kettleExitCompression"
    t.decimal  "kettleExitTemperature"
    t.decimal  "tempAdditionalWater"
    t.decimal  "tempCombustionAir"
    t.decimal  "tempExhaustBeforeWRG"
    t.decimal  "tempExhaustAfterWRG"
    t.decimal  "carbonDioxideExhaust"
    t.integer  "year_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "fuelConsumptionUnit"
  end

  create_table "hot_water_productions", :force => true do |t|
    t.string   "kettleName"
    t.string   "kettleManufacturer"
    t.integer  "kettleManuYear"
    t.decimal  "kettleCapacity"
    t.string   "burnerType"
    t.string   "burnerManufacturer"
    t.integer  "burnerManuYear"
    t.decimal  "districtHeatMin"
    t.decimal  "districtHeatMax"
    t.string   "fuelType"
    t.decimal  "fuelDenseness"
    t.decimal  "fuelValue"
    t.string   "exhaustHeatRecovery"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.decimal  "kettleCapacityKw"
    t.string   "fuelValueUnit"
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
  end

  create_table "howtos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "levels", :force => true do |t|
    t.integer  "building_id"
    t.integer  "level"
    t.text     "floor_plan"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.float    "total_consumption"
  end

  create_table "lightings", :force => true do |t|
    t.integer  "location_id"
    t.string   "bulbs"
    t.integer  "yearOfManufacturing"
    t.integer  "numberOfBulbs"
    t.integer  "numberOfBulbsInLamp"
    t.decimal  "powerPerLamp"
    t.decimal  "installedPower"
    t.string   "controlGear"
    t.string   "lampConfiguration"
    t.string   "string"
    t.integer  "hoursOfOperation"
    t.string   "illuminationTechnique"
    t.string   "lightControl"
    t.boolean  "groupSwitchable"
    t.boolean  "windowShadowing"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "squaremeter"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.decimal  "height"
    t.integer  "level_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.integer  "enterprise_id"
    t.integer  "building_id"
  end

  create_table "machineries", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "energyConsumption"
    t.integer  "yearOfConstruction"
    t.integer  "yearOfBuy"
    t.integer  "enterpriseID"
    t.integer  "machineryTypeID"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.decimal  "capacity"
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
    t.integer  "location_id"
    t.integer  "productionLevel"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "machinery_types", :force => true do |t|
    t.string   "m_type"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "measuring_data", :force => true do |t|
    t.date     "measuringDate"
    t.time     "measuringTime"
    t.decimal  "capacity"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "enterpriseID"
    t.integer  "mnumber"
  end

  create_table "measurings", :force => true do |t|
    t.integer  "enterprise_id"
    t.datetime "dateFrom"
    t.datetime "dateTo"
    t.integer  "location_id"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "name"
  end

  create_table "meter_readings", :force => true do |t|
    t.integer  "meter_id"
    t.date     "readingDate"
    t.decimal  "readingValue"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "meter_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "meters", :force => true do |t|
    t.integer  "enterprise_id"
    t.integer  "location_id"
    t.integer  "meterType_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "contract_id"
    t.integer  "meterNo"
  end

  create_table "produced_units", :force => true do |t|
    t.integer  "productRange_id"
    t.integer  "year"
    t.integer  "amount"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "product_ranges", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "production_data", :force => true do |t|
    t.integer  "year"
    t.integer  "enterprise_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "paperUsage"
    t.integer  "inkUsage"
    t.integer  "orders"
    t.float    "utilities"
    t.integer  "clients"
  end

  create_table "production_levels", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "productions", :force => true do |t|
    t.integer  "productRange_id"
    t.integer  "productedUnits"
    t.integer  "year"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "produktion_sites", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "address"
    t.integer  "number"
    t.integer  "zip"
    t.string   "city"
    t.integer  "enterprise_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.text     "role_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "speed_regulations", :force => true do |t|
    t.decimal  "deliveryRate10"
    t.decimal  "deliveryRate20"
    t.decimal  "deliveryRate30"
    t.decimal  "deliveryRate40"
    t.decimal  "deliveryRate50"
    t.decimal  "deliveryRate60"
    t.decimal  "deliveryRate70"
    t.decimal  "deliveryRate80"
    t.decimal  "deliveryRate90"
    t.integer  "year_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "compressor_id"
  end

  create_table "steam_consumptions", :force => true do |t|
    t.integer  "consumer_id"
    t.integer  "steamProduction_id"
    t.string   "system"
    t.decimal  "dpCompressionNeeded"
    t.decimal  "dpTemperatureNeeded"
    t.decimal  "massFlowNennNeeded"
    t.decimal  "massFlowMinNeeded"
    t.decimal  "massFlowMaxNeeded"
    t.string   "requirementType"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "steam_demands", :force => true do |t|
    t.time     "timeFrom"
    t.time     "timeTo"
    t.integer  "year_id"
    t.integer  "steamConsumption_id"
    t.date     "demandDate"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "steam_distribution_years", :force => true do |t|
    t.integer  "steamProduction_id"
    t.integer  "steamConsumer_id"
    t.decimal  "dpCompression"
    t.decimal  "dpTemperature"
    t.decimal  "kpCompression"
    t.decimal  "kpTemperature"
    t.decimal  "kpReflux"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "steam_distributions", :force => true do |t|
    t.integer  "steamProduction_id"
    t.integer  "steamConsumer_id"
    t.decimal  "dpAperture"
    t.decimal  "dpIsolation"
    t.decimal  "dpLength"
    t.decimal  "massFlowNenn"
    t.decimal  "massFlowMin"
    t.decimal  "massFlowMax"
    t.decimal  "kpAperture"
    t.decimal  "kpIsolation"
    t.decimal  "kpLength"
    t.string   "drain"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "steam_production_years", :force => true do |t|
    t.decimal  "fuelConsumption"
    t.decimal  "kettleEnergyConsumption"
    t.integer  "operationHours"
    t.decimal  "kettleSteamParameterBar"
    t.decimal  "kettleSteamParameterCel"
    t.decimal  "steamAmount"
    t.decimal  "tempAdditionalWater"
    t.decimal  "tempCombustionAir"
    t.decimal  "tempExhaustBeforeWRG"
    t.decimal  "tempExhaustAfterWRG"
    t.decimal  "carbonDioxideExhaust"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "fuelConsumptionUnit"
    t.integer  "year_id"
    t.integer  "steamProductionId"
  end

  create_table "steam_productions", :force => true do |t|
    t.string   "kettleName"
    t.string   "kettleManufaturer"
    t.decimal  "kettleCapacity"
    t.decimal  "kettleSaturatedSteam"
    t.string   "burnerType"
    t.string   "burnerManufacturer"
    t.integer  "burnerManufacturingYear"
    t.decimal  "districtHeatMin"
    t.decimal  "districtHeatMax"
    t.string   "fuelType"
    t.decimal  "fuelCapacity"
    t.decimal  "fuelValue"
    t.string   "fuelValueUnit"
    t.string   "exhaustHeatRecovery"
    t.decimal  "ventCondenser"
    t.boolean  "o2Control"
    t.text     "chimney"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "kettleManuYear"
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
    t.integer  "yearOfManufaturing"
    t.integer  "steamProductionId"
  end

  create_table "thermo_oil_consumption_years", :force => true do |t|
    t.decimal  "volumeStream"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.decimal  "processTemperature"
    t.integer  "thermoOilProduction_id"
    t.integer  "machinery_id"
    t.string   "thermoOilConsumption_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "thermo_oil_consumptions", :force => true do |t|
    t.integer  "thermoOilProduction_id"
    t.string   "machinery_id"
    t.decimal  "profitCapacity"
    t.string   "requirementType"
    t.integer  "thermoOilDistribution_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "thermo_oil_demands", :force => true do |t|
    t.time     "timeFrom"
    t.time     "timeTo"
    t.integer  "machinery_id"
    t.date     "demandDate"
    t.integer  "year_id"
    t.integer  "thermoOilConsumptionYear_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "thermo_oil_distribution_years", :force => true do |t|
    t.decimal  "compression"
    t.decimal  "flowTemperature"
    t.decimal  "returnTemperature"
    t.integer  "thermoOilProduction_id"
    t.integer  "thermoOilConsumption_id"
    t.integer  "thermoOilDistribution_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "thermo_oil_distributions", :force => true do |t|
    t.integer  "thermoOilProduction_id"
    t.integer  "thermoOilConsumption_id"
    t.decimal  "aperture"
    t.decimal  "isolation"
    t.decimal  "length"
    t.decimal  "volumeFlowNenn"
    t.decimal  "volumeFlowMin"
    t.decimal  "volumeFlowMax"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "thermo_oil_production_years", :force => true do |t|
    t.integer  "thermoOilProduction_id"
    t.decimal  "fuelConsumption"
    t.decimal  "kettleEnergyConsumption"
    t.integer  "operatingHours"
    t.decimal  "kettleExitCompression"
    t.decimal  "kettleExitTemperature"
    t.decimal  "thermoOilAmount"
    t.decimal  "tempAdditionalWater"
    t.decimal  "tempCombustionAir"
    t.decimal  "tempExhaustBeforeWRG"
    t.decimal  "tempExhaustAfterWRG"
    t.integer  "carbonDioxideExhaust"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "thermo_oil_productions", :force => true do |t|
    t.string   "kettleName"
    t.string   "kettleManufacturer"
    t.integer  "kettleManuYear"
    t.decimal  "kettleCapacity"
    t.string   "burnerType"
    t.string   "burnerManufacturer"
    t.integer  "burnerManuYear"
    t.decimal  "districtHeatMin"
    t.decimal  "districtHeatMax"
    t.string   "fuelType"
    t.decimal  "fuelDenseness"
    t.decimal  "fuelValue"
    t.string   "thermoOilName"
    t.string   "exhaustHeatRecovery"
    t.decimal  "o2control"
    t.text     "chimney"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "fuelValueUnit"
    t.integer  "detachablePart"
    t.integer  "detachDuration"
    t.integer  "detachTerm"
  end

  create_table "todos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "position"
    t.text     "annotation"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "role_id"
    t.integer  "enterprise_id"
  end

  create_table "warning_tables", :force => true do |t|
    t.string   "system_table_name"
    t.string   "view_table_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "warnings", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "periodicity"
    t.string   "event_source"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "years", :force => true do |t|
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
