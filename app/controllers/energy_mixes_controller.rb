class EnergyMixesController < ApplicationController
  # GET /energy_mixes
  # GET /energy_mixes.json
  def index
    @energy_mixes = EnergyMix.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @energy_mixes }
    end
  end

  # GET /energy_mixes/1
  # GET /energy_mixes/1.json
  def show
    @energy_mix = EnergyMix.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @energy_mix }
    end
  end

  # GET /energy_mixes/new
  # GET /energy_mixes/new.json
  def new
    @energy_mix = EnergyMix.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @energy_mix }
    end
  end

  # GET /energy_mixes/1/edit
  def edit
    @energy_mix = EnergyMix.find(params[:id])
  end

  # POST /energy_mixes
  # POST /energy_mixes.json
  def create
    @energy_mix = EnergyMix.new(params[:energy_mix])

    respond_to do |format|
      if @energy_mix.save
        format.html { redirect_to @energy_mix, notice: 'Energy mix was successfully created.' }
        format.json { render json: @energy_mix, status: :created, location: @energy_mix }
      else
        format.html { render action: "new" }
        format.json { render json: @energy_mix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /energy_mixes/1
  # PUT /energy_mixes/1.json
  def update
    @energy_mix = EnergyMix.find(params[:id])

    respond_to do |format|
      if @energy_mix.update_attributes(params[:energy_mix])
        format.html { redirect_to @energy_mix, notice: 'Energy mix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @energy_mix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energy_mixes/1
  # DELETE /energy_mixes/1.json
  def destroy
    @energy_mix = EnergyMix.find(params[:id])
    @energy_mix.destroy

    respond_to do |format|
      format.html { redirect_to energy_mixes_url }
      format.json { head :no_content }
    end
  end
end
