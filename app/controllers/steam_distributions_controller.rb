class SteamDistributionsController < ApplicationController
  # GET /steam_distributions
  # GET /steam_distributions.json
  def index
    @steam_distributions = SteamDistribution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steam_distributions }
    end
  end

  # GET /steam_distributions/1
  # GET /steam_distributions/1.json
  def show
    @steam_distribution = SteamDistribution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steam_distribution }
    end
  end

  # GET /steam_distributions/new
  # GET /steam_distributions/new.json
  def new
    @steam_distribution = SteamDistribution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steam_distribution }
    end
  end

  # GET /steam_distributions/1/edit
  def edit
    @steam_distribution = SteamDistribution.find(params[:id])
  end

  # POST /steam_distributions
  # POST /steam_distributions.json
  def create
    @steam_distribution = SteamDistribution.new(params[:steam_distribution])

    respond_to do |format|
      if @steam_distribution.save
        format.html { redirect_to @steam_distribution, notice: 'Steam distribution was successfully created.' }
        format.json { render json: @steam_distribution, status: :created, location: @steam_distribution }
      else
        format.html { render action: "new" }
        format.json { render json: @steam_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steam_distributions/1
  # PUT /steam_distributions/1.json
  def update
    @steam_distribution = SteamDistribution.find(params[:id])

    respond_to do |format|
      if @steam_distribution.update_attributes(params[:steam_distribution])
        format.html { redirect_to @steam_distribution, notice: 'Steam distribution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steam_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_distributions/1
  # DELETE /steam_distributions/1.json
  def destroy
    @steam_distribution = SteamDistribution.find(params[:id])
    @steam_distribution.destroy

    respond_to do |format|
      format.html { redirect_to steam_distributions_url }
      format.json { head :no_content }
    end
  end
end
