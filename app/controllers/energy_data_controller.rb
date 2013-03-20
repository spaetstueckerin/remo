class EnergyDataController < ApplicationController
  # GET /energy_data
  # GET /energy_data.json
  def index
    @energy_data = EnergyDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @energy_data }
    end
  end

  # GET /energy_data/1
  # GET /energy_data/1.json
  def show
    @energy_datum = EnergyDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @energy_datum }
    end
  end

  # GET /energy_data/new
  # GET /energy_data/new.json
  def new
    @energy_datum = EnergyDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @energy_datum }
    end
  end

  # GET /energy_data/1/edit
  def edit
    @energy_datum = EnergyDatum.find(params[:id])
  end

  # POST /energy_data
  # POST /energy_data.json
  def create
    @energy_datum = EnergyDatum.new(params[:energy_datum])

    respond_to do |format|
      if @energy_datum.save
        format.html { redirect_to @energy_datum, notice: 'Energy datum was successfully created.' }
        format.json { render json: @energy_datum, status: :created, location: @energy_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @energy_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /energy_data/1
  # PUT /energy_data/1.json
  def update
    @energy_datum = EnergyDatum.find(params[:id])

    respond_to do |format|
      if @energy_datum.update_attributes(params[:energy_datum])
        format.html { redirect_to @energy_datum, notice: 'Energy datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @energy_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energy_data/1
  # DELETE /energy_data/1.json
  def destroy
    @energy_datum = EnergyDatum.find(params[:id])
    @energy_datum.destroy

    respond_to do |format|
      format.html { redirect_to energy_data_url }
      format.json { head :no_content }
    end
  end
end
