class SteamProductionYearsController < ApplicationController
  # GET /steam_production_years
  # GET /steam_production_years.json
  def index
    @steam_production_years = SteamProductionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steam_production_years }
    end
  end

  # GET /steam_production_years/1
  # GET /steam_production_years/1.json
  def show
    @steam_production_year = SteamProductionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steam_production_year }
    end
  end

  # GET /steam_production_years/new
  # GET /steam_production_years/new.json
  def new
    @steam_production_year = SteamProductionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steam_production_year }
    end
  end

  # GET /steam_production_years/1/edit
  def edit
    @steam_production_year = SteamProductionYear.find(params[:id])
  end

  # POST /steam_production_years
  # POST /steam_production_years.json
  def create
    @steam_production_year = SteamProductionYear.new(params[:steam_production_year])

    respond_to do |format|
      if @steam_production_year.save
        format.html { redirect_to @steam_production_year, notice: 'Steam production year was successfully created.' }
        format.json { render json: @steam_production_year, status: :created, location: @steam_production_year }
      else
        format.html { render action: "new" }
        format.json { render json: @steam_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steam_production_years/1
  # PUT /steam_production_years/1.json
  def update
    @steam_production_year = SteamProductionYear.find(params[:id])

    respond_to do |format|
      if @steam_production_year.update_attributes(params[:steam_production_year])
        format.html { redirect_to @steam_production_year, notice: 'Steam production year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steam_production_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_production_years/1
  # DELETE /steam_production_years/1.json
  def destroy
    @steam_production_year = SteamProductionYear.find(params[:id])
    @steam_production_year.destroy

    respond_to do |format|
      format.html { redirect_to steam_production_years_url }
      format.json { head :no_content }
    end
  end
end
