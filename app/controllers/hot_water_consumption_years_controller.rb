class HotWaterConsumptionYearsController < ApplicationController
  # GET /hot_water_consumption_years
  # GET /hot_water_consumption_years.json
  def index
    @hot_water_consumption_years = HotWaterConsumptionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_water_consumption_years }
    end
  end

  # GET /hot_water_consumption_years/1
  # GET /hot_water_consumption_years/1.json
  def show
    @hot_water_consumption_year = HotWaterConsumptionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_water_consumption_year }
    end
  end

  # GET /hot_water_consumption_years/new
  # GET /hot_water_consumption_years/new.json
  def new
    @hot_water_consumption_year = HotWaterConsumptionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_water_consumption_year }
    end
  end

  # GET /hot_water_consumption_years/1/edit
  def edit
    @hot_water_consumption_year = HotWaterConsumptionYear.find(params[:id])
  end

  # POST /hot_water_consumption_years
  # POST /hot_water_consumption_years.json
  def create
    @hot_water_consumption_year = HotWaterConsumptionYear.new(params[:hot_water_consumption_year])

    respond_to do |format|
      if @hot_water_consumption_year.save
        format.html { redirect_to @hot_water_consumption_year, notice: 'Hot water consumption year was successfully created.' }
        format.json { render json: @hot_water_consumption_year, status: :created, location: @hot_water_consumption_year }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_water_consumption_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_water_consumption_years/1
  # PUT /hot_water_consumption_years/1.json
  def update
    @hot_water_consumption_year = HotWaterConsumptionYear.find(params[:id])

    respond_to do |format|
      if @hot_water_consumption_year.update_attributes(params[:hot_water_consumption_year])
        format.html { redirect_to @hot_water_consumption_year, notice: 'Hot water consumption year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_water_consumption_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_water_consumption_years/1
  # DELETE /hot_water_consumption_years/1.json
  def destroy
    @hot_water_consumption_year = HotWaterConsumptionYear.find(params[:id])
    @hot_water_consumption_year.destroy

    respond_to do |format|
      format.html { redirect_to hot_water_consumption_years_url }
      format.json { head :no_content }
    end
  end
end
