class ThermoOilProductionsController < ApplicationController
  # GET /thermo_oil_productions
  # GET /thermo_oil_productions.json
  def index
    @thermo_oil_productions = ThermoOilProduction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thermo_oil_productions }
    end
  end

  # GET /thermo_oil_productions/1
  # GET /thermo_oil_productions/1.json
  def show
    @thermo_oil_production = ThermoOilProduction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thermo_oil_production }
    end
  end

  # GET /thermo_oil_productions/new
  # GET /thermo_oil_productions/new.json
  def new
    @thermo_oil_production = ThermoOilProduction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thermo_oil_production }
    end
  end

  # GET /thermo_oil_productions/1/edit
  def edit
    @thermo_oil_production = ThermoOilProduction.find(params[:id])
  end

  # POST /thermo_oil_productions
  # POST /thermo_oil_productions.json
  def create
    @thermo_oil_production = ThermoOilProduction.new(params[:thermo_oil_production])

    respond_to do |format|
      if @thermo_oil_production.save
        format.html { redirect_to @thermo_oil_production, notice: 'Thermo oil production was successfully created.' }
        format.json { render json: @thermo_oil_production, status: :created, location: @thermo_oil_production }
      else
        format.html { render action: "new" }
        format.json { render json: @thermo_oil_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thermo_oil_productions/1
  # PUT /thermo_oil_productions/1.json
  def update
    @thermo_oil_production = ThermoOilProduction.find(params[:id])

    respond_to do |format|
      if @thermo_oil_production.update_attributes(params[:thermo_oil_production])
        format.html { redirect_to @thermo_oil_production, notice: 'Thermo oil production was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thermo_oil_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermo_oil_productions/1
  # DELETE /thermo_oil_productions/1.json
  def destroy
    @thermo_oil_production = ThermoOilProduction.find(params[:id])
    @thermo_oil_production.destroy

    respond_to do |format|
      format.html { redirect_to thermo_oil_productions_url }
      format.json { head :no_content }
    end
  end
end
