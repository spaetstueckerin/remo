class CompressedAirConsumptionYearsController < ApplicationController
  # GET /compressed_air_consumptionyears
  # GET /compressed_air_consumptionyears.json
  def index
    @compressed_air_consumption_years = CompressedAirConsumptionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compressed_air_consumption_years }
    end
  end

  # GET /compressed_air_consumptionyears/1
  # GET /compressed_air_consumptionyears/1.json
  def show
    @compressed_air_consumption_year = CompressedAirConsumptionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compressed_air_consumption_year }
    end
  end

  # GET /compressed_air_consumptionyears/new
  # GET /compressed_air_consumptionyears/new.json
  def new
    @compressed_air_consumption_year = CompressedAirConsumptionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compressed_air_consumption_year }
    end
  end

  # GET /compressed_air_consumptionyears/1/edit
  def edit
    @compressed_air_consumption_year = CompressedAirConsumptionYear.find(params[:id])
  end

  # POST /compressed_air_consumptionyears
  # POST /compressed_air_consumptionyears.json
  def create
    @compressed_air_consumption_year = CompressedAirConsumptionYear.new(params[:compressed_air_consumption_year])

    respond_to do |format|
      if @compressed_air_consumption_year.save
        format.html { redirect_to @compressed_air_consumption_year, notice: 'Compressed air consumption year was successfully created.' }
        format.json { render json: @compressed_air_consumption_year, status: :created, location: @compressed_air_consumption_year }
      else
        format.html { render action: "new" }
        format.json { render json: @compressed_air_consumption_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compressed_air_consumptionyears/1
  # PUT /compressed_air_consumptionyears/1.json
  def update
    @compressed_air_consumption_year = CompressedAirConsumptionYear.find(params[:id])

    respond_to do |format|
      if @compressed_air_consumption_year.update_attributes(params[:compressed_air_consumption_year])
        format.html { redirect_to @compressed_air_consumption_year, notice: 'Compressed air consumptionyear was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compressed_air_consumption_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressed_air_consumptionyears/1
  # DELETE /compressed_air_consumptionyears/1.json
  def destroy
    @compressed_air_consumption_year = CompressedAirConsumptionYear.find(params[:id])
    @compressed_air_consumption_year.destroy

    respond_to do |format|
      format.html { redirect_to compressed_air_consumption_years_url }
      format.json { head :no_content }
    end
  end
end
