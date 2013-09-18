class CompressedAirProductionsController < ApplicationController
  # GET /compressed_air_production_basics
  # GET /compressed_air_production_basics.json
  
  #kürzlich umbenannt ohne "basics"
  
  def index
    @compressed_air_productions = CompressedAirProduction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compressed_air_productions }
    end
  end

  # GET /compressed_air_production/1
  # GET /compressed_air_production/1.json
  def show
    @compressed_air_production = CompressedAirProduction.find(params[:id])
    @compressed_air_production_years = CompressedAirProductionYear.find_all_by_compressedAirProduction_id(params[:id], :order =>"year_id DESC")
    @compressed_air_distributions = CompressedAirDistribution.find_all_by_compressor_id(params[:id])
    @compressed_air_distribution_years = CompressedAirDistributionYear.find_all_by_compressor_id(params[:id])
    @compressed_air_consumptions = CompressedAirConsumer.find_all_by_compressor_id(params[:id])
    @compressed_air_consumption_years = CompressedAirConsumptionYear.find_all_by_compressor_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compressed_air_production }
    end
  end

  # GET /compressed_air_production/new
  # GET /compressed_air_production/new.json
  def new
    @compressed_air_production = CompressedAirProduction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compressed_air_production }
    end
  end

  # GET /compressed_air_production_basics/1/edit
  def edit
    @compressed_air_production = CompressedAirProduction.find(params[:id])
  end

  # POST /compressed_air_production_basics
  # POST /compressed_air_production_basics.json
  def create
    @compressed_air_production = CompressedAirProduction.new(params[:compressed_air_production])

    respond_to do |format|
      if @compressed_air_production.save
        format.html { redirect_to @compressed_air_production, notice: 'Compressed air production basic was successfully created.' }
        format.json { render json: @compressed_air_production, status: :created, location: @compressed_air_production }
      else
        format.html { render action: "new" }
        format.json { render json: @compressed_air_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compressed_air_production_basics/1
  # PUT /compressed_air_production_basics/1.json
  def update
    @compressed_air_production = CompressedAirProduction.find(params[:id])

    respond_to do |format|
      if @compressed_air_production.update_attributes(params[:compressed_air_production])
        format.html { redirect_to @compressed_air_production, notice: 'Compressed air production basic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compressed_air_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressed_air_production_basics/1
  # DELETE /compressed_air_production_basics/1.json
  def destroy
    @compressed_air_production = CompressedAirProduction.find(params[:id])
    @compressed_air_production.destroy

    respond_to do |format|
      format.html { redirect_to compressed_air_production_url }
      format.json { head :no_content }
    end
  end
end
