class CompressedAirProductionYearsController < ApplicationController
  # GET /compressed_air_production_years
  # GET /compressed_air_production_years.json
  def index
    @compressed_air_production_years = CompressedAirProductionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compressed_air_production_years }
    end
  end

  # GET /compressed_air_production_years/1
  # GET /compressed_air_production_years/1.json
  def show
    @compressed_air_production_year = CompressedAirProductionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compressed_air_production_year }
    end
  end

  # GET /compressed_air_production_years/new
  # GET /compressed_air_production_years/new.json
  def new
    @compressed_air_production_year = CompressedAirProductionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compressed_air_production_year }
    end
  end

  # GET /compressed_air_production_years/1/edit
  def edit
    @compressed_air_production_year = CompressedAirProductionYear.find(params[:id])
  end

  # POST /compressed_air_production_years
  # POST /compressed_air_production_years.json
  def create
    @compressed_air_production_year = CompressedAirProductionYear.new(params[:compressed_air_production_year])

    respond_to do |format|
      if @compressed_air_production_year.save
        format.html { redirect_to @compressed_air_production_year, notice: 'Compressed air production year was successfully created.' }
        format.json { render json: @compressed_air_production_year, status: :created, location: @compressed_air_production_year }
      else
        format.html { render action: "new" }
        format.json { render json: @compressed_air_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compressed_air_production_years/1
  # PUT /compressed_air_production_years/1.json
  def update
    @compressed_air_production_year = CompressedAirProductionYear.find(params[:id])

    respond_to do |format|
      if @compressed_air_production_year.update_attributes(params[:compressed_air_production_year])
        format.html { redirect_to @compressed_air_production_year, notice: 'Compressed air production year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compressed_air_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressed_air_production_years/1
  # DELETE /compressed_air_production_years/1.json
  def destroy
    @compressed_air_production_year = CompressedAirProductionYear.find(params[:id])
    @compressed_air_production_year.destroy

    respond_to do |format|
      format.html { redirect_to compressed_air_production_years_url }
      format.json { head :no_content }
    end
  end
end
