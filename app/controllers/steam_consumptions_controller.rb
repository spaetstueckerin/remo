class SteamConsumptionsController < ApplicationController
  # GET /steam_consumptions
  # GET /steam_consumptions.json
  def index
    @steam_consumptions = SteamConsumption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steam_consumptions }
    end
  end

  # GET /steam_consumptions/1
  # GET /steam_consumptions/1.json
  def show
    @steam_consumption = SteamConsumption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steam_consumption }
    end
  end

  # GET /steam_consumptions/new
  # GET /steam_consumptions/new.json
  def new
    @steam_consumption = SteamConsumption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steam_consumption }
    end
  end

  # GET /steam_consumptions/1/edit
  def edit
    @steam_consumption = SteamConsumption.find(params[:id])
  end

  # POST /steam_consumptions
  # POST /steam_consumptions.json
  def create
    @steam_consumption = SteamConsumption.new(params[:steam_consumption])

    respond_to do |format|
      if @steam_consumption.save
        format.html { redirect_to @steam_consumption, notice: 'Steam consumption was successfully created.' }
        format.json { render json: @steam_consumption, status: :created, location: @steam_consumption }
      else
        format.html { render action: "new" }
        format.json { render json: @steam_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steam_consumptions/1
  # PUT /steam_consumptions/1.json
  def update
    @steam_consumption = SteamConsumption.find(params[:id])

    respond_to do |format|
      if @steam_consumption.update_attributes(params[:steam_consumption])
        format.html { redirect_to @steam_consumption, notice: 'Steam consumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steam_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_consumptions/1
  # DELETE /steam_consumptions/1.json
  def destroy
    @steam_consumption = SteamConsumption.find(params[:id])
    @steam_consumption.destroy

    respond_to do |format|
      format.html { redirect_to steam_consumptions_url }
      format.json { head :no_content }
    end
  end
end
