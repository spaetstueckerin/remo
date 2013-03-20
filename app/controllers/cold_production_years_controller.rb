class ColdProductionYearsController < ApplicationController
  # GET /cold_production_years
  # GET /cold_production_years.json
  def index
    @cold_production_years = ColdProductionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_production_years }
    end
  end

  # GET /cold_production_years/1
  # GET /cold_production_years/1.json
  def show
    @cold_production_year = ColdProductionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_production_year }
    end
  end

  # GET /cold_production_years/new
  # GET /cold_production_years/new.json
  def new
    @cold_production_year = ColdProductionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_production_year }
    end
  end

  # GET /cold_production_years/1/edit
  def edit
    @cold_production_year = ColdProductionYear.find(params[:id])
  end

  # POST /cold_production_years
  # POST /cold_production_years.json
  def create
    @cold_production_year = ColdProductionYear.new(params[:cold_production_year])

    respond_to do |format|
      if @cold_production_year.save
        format.html { redirect_to @cold_production_year, notice: 'Cold production year was successfully created.' }
        format.json { render json: @cold_production_year, status: :created, location: @cold_production_year }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_production_years/1
  # PUT /cold_production_years/1.json
  def update
    @cold_production_year = ColdProductionYear.find(params[:id])

    respond_to do |format|
      if @cold_production_year.update_attributes(params[:cold_production_year])
        format.html { redirect_to @cold_production_year, notice: 'Cold production year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_production_years/1
  # DELETE /cold_production_years/1.json
  def destroy
    @cold_production_year = ColdProductionYear.find(params[:id])
    @cold_production_year.destroy

    respond_to do |format|
      format.html { redirect_to cold_production_years_url }
      format.json { head :no_content }
    end
  end
end
