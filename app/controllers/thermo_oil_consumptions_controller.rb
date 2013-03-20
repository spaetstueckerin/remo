class ThermoOilConsumptionsController < ApplicationController
  # GET /thermo_oil_consumptions
  # GET /thermo_oil_consumptions.json
  def index
    @thermo_oil_consumptions = ThermoOilConsumption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thermo_oil_consumptions }
    end
  end

  # GET /thermo_oil_consumptions/1
  # GET /thermo_oil_consumptions/1.json
  def show
    @thermo_oil_consumption = ThermoOilConsumption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thermo_oil_consumption }
    end
  end

  # GET /thermo_oil_consumptions/new
  # GET /thermo_oil_consumptions/new.json
  def new
    @thermo_oil_consumption = ThermoOilConsumption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thermo_oil_consumption }
    end
  end

  # GET /thermo_oil_consumptions/1/edit
  def edit
    @thermo_oil_consumption = ThermoOilConsumption.find(params[:id])
  end

  # POST /thermo_oil_consumptions
  # POST /thermo_oil_consumptions.json
  def create
    @thermo_oil_consumption = ThermoOilConsumption.new(params[:thermo_oil_consumption])

    respond_to do |format|
      if @thermo_oil_consumption.save
        format.html { redirect_to @thermo_oil_consumption, notice: 'Thermo oil consumption was successfully created.' }
        format.json { render json: @thermo_oil_consumption, status: :created, location: @thermo_oil_consumption }
      else
        format.html { render action: "new" }
        format.json { render json: @thermo_oil_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thermo_oil_consumptions/1
  # PUT /thermo_oil_consumptions/1.json
  def update
    @thermo_oil_consumption = ThermoOilConsumption.find(params[:id])

    respond_to do |format|
      if @thermo_oil_consumption.update_attributes(params[:thermo_oil_consumption])
        format.html { redirect_to @thermo_oil_consumption, notice: 'Thermo oil consumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thermo_oil_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermo_oil_consumptions/1
  # DELETE /thermo_oil_consumptions/1.json
  def destroy
    @thermo_oil_consumption = ThermoOilConsumption.find(params[:id])
    @thermo_oil_consumption.destroy

    respond_to do |format|
      format.html { redirect_to thermo_oil_consumptions_url }
      format.json { head :no_content }
    end
  end
end
