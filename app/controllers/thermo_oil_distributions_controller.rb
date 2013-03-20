class ThermoOilDistributionsController < ApplicationController
  # GET /thermo_oil_distributions
  # GET /thermo_oil_distributions.json
  def index
    @thermo_oil_distributions = ThermoOilDistribution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thermo_oil_distributions }
    end
  end

  # GET /thermo_oil_distributions/1
  # GET /thermo_oil_distributions/1.json
  def show
    @thermo_oil_distribution = ThermoOilDistribution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thermo_oil_distribution }
    end
  end

  # GET /thermo_oil_distributions/new
  # GET /thermo_oil_distributions/new.json
  def new
    @thermo_oil_distribution = ThermoOilDistribution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thermo_oil_distribution }
    end
  end

  # GET /thermo_oil_distributions/1/edit
  def edit
    @thermo_oil_distribution = ThermoOilDistribution.find(params[:id])
  end

  # POST /thermo_oil_distributions
  # POST /thermo_oil_distributions.json
  def create
    @thermo_oil_distribution = ThermoOilDistribution.new(params[:thermo_oil_distribution])

    respond_to do |format|
      if @thermo_oil_distribution.save
        format.html { redirect_to @thermo_oil_distribution, notice: 'Thermo oil distribution was successfully created.' }
        format.json { render json: @thermo_oil_distribution, status: :created, location: @thermo_oil_distribution }
      else
        format.html { render action: "new" }
        format.json { render json: @thermo_oil_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thermo_oil_distributions/1
  # PUT /thermo_oil_distributions/1.json
  def update
    @thermo_oil_distribution = ThermoOilDistribution.find(params[:id])

    respond_to do |format|
      if @thermo_oil_distribution.update_attributes(params[:thermo_oil_distribution])
        format.html { redirect_to @thermo_oil_distribution, notice: 'Thermo oil distribution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thermo_oil_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermo_oil_distributions/1
  # DELETE /thermo_oil_distributions/1.json
  def destroy
    @thermo_oil_distribution = ThermoOilDistribution.find(params[:id])
    @thermo_oil_distribution.destroy

    respond_to do |format|
      format.html { redirect_to thermo_oil_distributions_url }
      format.json { head :no_content }
    end
  end
end
