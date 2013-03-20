class ColdConsumptionYearsController < ApplicationController
  # GET /cold_consumption_years
  # GET /cold_consumption_years.json
  def index
    @cold_consumption_years = ColdConsumptionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_consumption_years }
    end
  end

  # GET /cold_consumption_years/1
  # GET /cold_consumption_years/1.json
  def show
    @cold_consumption_year = ColdConsumptionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_consumption_year }
    end
  end

  # GET /cold_consumption_years/new
  # GET /cold_consumption_years/new.json
  def new
    @cold_consumption_year = ColdConsumptionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_consumption_year }
    end
  end

  # GET /cold_consumption_years/1/edit
  def edit
    @cold_consumption_year = ColdConsumptionYear.find(params[:id])
  end

  # POST /cold_consumption_years
  # POST /cold_consumption_years.json
  def create
    @cold_consumption_year = ColdConsumptionYear.new(params[:cold_consumption_year])

    respond_to do |format|
      if @cold_consumption_year.save
        format.html { redirect_to @cold_consumption_year, notice: 'Cold consumption year was successfully created.' }
        format.json { render json: @cold_consumption_year, status: :created, location: @cold_consumption_year }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_consumption_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_consumption_years/1
  # PUT /cold_consumption_years/1.json
  def update
    @cold_consumption_year = ColdConsumptionYear.find(params[:id])

    respond_to do |format|
      if @cold_consumption_year.update_attributes(params[:cold_consumption_year])
        format.html { redirect_to @cold_consumption_year, notice: 'Cold consumption year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_consumption_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_consumption_years/1
  # DELETE /cold_consumption_years/1.json
  def destroy
    @cold_consumption_year = ColdConsumptionYear.find(params[:id])
    @cold_consumption_year.destroy

    respond_to do |format|
      format.html { redirect_to cold_consumption_years_url }
      format.json { head :no_content }
    end
  end
end
