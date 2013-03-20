class ThermoOilDemandsController < ApplicationController
  # GET /thermo_oil_demands
  # GET /thermo_oil_demands.json
  def index
    @thermo_oil_demands = ThermoOilDemand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thermo_oil_demands }
    end
  end

  # GET /thermo_oil_demands/1
  # GET /thermo_oil_demands/1.json
  def show
    @thermo_oil_demand = ThermoOilDemand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thermo_oil_demand }
    end
  end

  # GET /thermo_oil_demands/new
  # GET /thermo_oil_demands/new.json
  def new
    @thermo_oil_demand = ThermoOilDemand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thermo_oil_demand }
    end
  end

  # GET /thermo_oil_demands/1/edit
  def edit
    @thermo_oil_demand = ThermoOilDemand.find(params[:id])
  end

  # POST /thermo_oil_demands
  # POST /thermo_oil_demands.json
  def create
    @thermo_oil_demand = ThermoOilDemand.new(params[:thermo_oil_demand])

    respond_to do |format|
      if @thermo_oil_demand.save
        format.html { redirect_to @thermo_oil_demand, notice: 'Thermo oil demand was successfully created.' }
        format.json { render json: @thermo_oil_demand, status: :created, location: @thermo_oil_demand }
      else
        format.html { render action: "new" }
        format.json { render json: @thermo_oil_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thermo_oil_demands/1
  # PUT /thermo_oil_demands/1.json
  def update
    @thermo_oil_demand = ThermoOilDemand.find(params[:id])

    respond_to do |format|
      if @thermo_oil_demand.update_attributes(params[:thermo_oil_demand])
        format.html { redirect_to @thermo_oil_demand, notice: 'Thermo oil demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thermo_oil_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermo_oil_demands/1
  # DELETE /thermo_oil_demands/1.json
  def destroy
    @thermo_oil_demand = ThermoOilDemand.find(params[:id])
    @thermo_oil_demand.destroy

    respond_to do |format|
      format.html { redirect_to thermo_oil_demands_url }
      format.json { head :no_content }
    end
  end
end
