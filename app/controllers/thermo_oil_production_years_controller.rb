class ThermoOilProductionYearsController < ApplicationController
  # GET /thermo_oil_production_years
  # GET /thermo_oil_production_years.json
  def index
    @thermo_oil_production_years = ThermoOilProductionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thermo_oil_production_years }
    end
  end

  # GET /thermo_oil_production_years/1
  # GET /thermo_oil_production_years/1.json
  def show
    @thermo_oil_production_year = ThermoOilProductionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thermo_oil_production_year }
    end
  end

  # GET /thermo_oil_production_years/new
  # GET /thermo_oil_production_years/new.json
  def new
    @thermo_oil_production_year = ThermoOilProductionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thermo_oil_production_year }
    end
  end

  # GET /thermo_oil_production_years/1/edit
  def edit
    @thermo_oil_production_year = ThermoOilProductionYear.find(params[:id])
  end

  # POST /thermo_oil_production_years
  # POST /thermo_oil_production_years.json
  def create
    @thermo_oil_production_year = ThermoOilProductionYear.new(params[:thermo_oil_production_year])

    respond_to do |format|
      if @thermo_oil_production_year.save
        format.html { redirect_to @thermo_oil_production_year, notice: 'Thermo oil production year was successfully created.' }
        format.json { render json: @thermo_oil_production_year, status: :created, location: @thermo_oil_production_year }
      else
        format.html { render action: "new" }
        format.json { render json: @thermo_oil_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thermo_oil_production_years/1
  # PUT /thermo_oil_production_years/1.json
  def update
    @thermo_oil_production_year = ThermoOilProductionYear.find(params[:id])

    respond_to do |format|
      if @thermo_oil_production_year.update_attributes(params[:thermo_oil_production_year])
        format.html { redirect_to @thermo_oil_production_year, notice: 'Thermo oil production year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thermo_oil_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermo_oil_production_years/1
  # DELETE /thermo_oil_production_years/1.json
  def destroy
    @thermo_oil_production_year = ThermoOilProductionYear.find(params[:id])
    @thermo_oil_production_year.destroy

    respond_to do |format|
      format.html { redirect_to thermo_oil_production_years_url }
      format.json { head :no_content }
    end
  end
end
