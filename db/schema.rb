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

ActiveRecord::Schema.define(:version => 20130319153206) do

  create_table "bills", :force => true do |t|
    t.decimal  "value"
    t.decimal  "consumption"
    t.date     "date"
    t.date     "period_from"
    t.date     "period_to"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "contract_id"
  end

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "business_data", :force => true do |t|
    t.decimal  "value"
    t.integer  "year"
    t.integer  "enterprise_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "bdt_id"
  end

  create_table "business_data_types", :force => true do |t|
    t.string   "bd_type"
    t.text     "description"
    t.string   "unit"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "business_data_id"
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
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
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
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "year_id"
    t.decimal  "amount_water"
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
  end

  create_table "contracts", :force => true do |t|
    t.string   "energy_type"
    t.text     "description"
    t.string   "condition"
    t.date     "duration_from"
    t.date     "duration_to"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "enterprise_id"
    t.string   "supplier"
  end

  create_table "energy_data", :force => true do |t|
    t.decimal  "value"
    t.integer  "year"
    t.integer  "enterprise_id"
    t.integer  "edt_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "energy_data_types", :force => true do |t|
    t.string   "ed_type"
    t.string   "description_text"
    t.string   "unit"
    t.integer  "energy_data_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "enterprise_data", :force => true do |t|
    t.decimal  "value"
    t.integer  "year"
    t.integer  "enterprise_id"
    t.integer  "endt_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "enterprise_data_types", :force => true do |t|
    t.string   "end_type"
    t.string   "description_text"
    t.string   "unit"
    t.integer  "enterprise_data_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "enterprises", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.integer  "zip"
    t.integer  "city"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "country"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "branch_id"
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
  end

  create_table "howtos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
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
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "squaremeter"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "production_data", :force => true do |t|
    t.decimal  "value"
    t.integer  "year"
    t.integer  "enterprise_id"
    t.integer  "pdt_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "production_data_types", :force => true do |t|
    t.string   "pd_type"
    t.string   "description_text"
    t.string   "unit"
    t.integer  "production_data_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
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

  create_table "years", :force => true do |t|
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
