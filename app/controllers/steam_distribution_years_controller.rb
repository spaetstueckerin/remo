class SteamDistributionYearsController < ApplicationController
  # GET /steam_distribution_years
  # GET /steam_distribution_years.json
  def index
    @steam_distribution_years = SteamDistributionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steam_distribution_years }
    end
  end

  # GET /steam_distribution_years/1
  # GET /steam_distribution_years/1.json
  def show
    @steam_distribution_year = SteamDistributionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steam_distribution_year }
    end
  end

  # GET /steam_distribution_years/new
  # GET /steam_distribution_years/new.json
  def new
    @steam_distribution_year = SteamDistributionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steam_distribution_year }
    end
  end

  # GET /steam_distribution_years/1/edit
  def edit
    @steam_distribution_year = SteamDistributionYear.find(params[:id])
  end

  # POST /steam_distribution_years
  # POST /steam_distribution_years.json
  def create
    @steam_distribution_year = SteamDistributionYear.new(params[:steam_distribution_year])

    respond_to do |format|
      if @steam_distribution_year.save
        format.html { redirect_to @steam_distribution_year, notice: 'Steam distribution year was successfully created.' }
        format.json { render json: @steam_distribution_year, status: :created, location: @steam_distribution_year }
      else
        format.html { render action: "new" }
        format.json { render json: @steam_distribution_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steam_distribution_years/1
  # PUT /steam_distribution_years/1.json
  def update
    @steam_distribution_year = SteamDistributionYear.find(params[:id])

    respond_to do |format|
      if @steam_distribution_year.update_attributes(params[:steam_distribution_year])
        format.html { redirect_to @steam_distribution_year, notice: 'Steam distribution year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steam_distribution_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_distribution_years/1
  # DELETE /steam_distribution_years/1.json
  def destroy
    @steam_distribution_year = SteamDistributionYear.find(params[:id])
    @steam_distribution_year.destroy

    respond_to do |format|
      format.html { redirect_to steam_distribution_years_url }
      format.json { head :no_content }
    end
  end
end
