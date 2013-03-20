class SteamDemandsController < ApplicationController
  # GET /steam_demands
  # GET /steam_demands.json
  def index
    @steam_demands = SteamDemand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steam_demands }
    end
  end

  # GET /steam_demands/1
  # GET /steam_demands/1.json
  def show
    @steam_demand = SteamDemand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steam_demand }
    end
  end

  # GET /steam_demands/new
  # GET /steam_demands/new.json
  def new
    @steam_demand = SteamDemand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steam_demand }
    end
  end

  # GET /steam_demands/1/edit
  def edit
    @steam_demand = SteamDemand.find(params[:id])
  end

  # POST /steam_demands
  # POST /steam_demands.json
  def create
    @steam_demand = SteamDemand.new(params[:steam_demand])

    respond_to do |format|
      if @steam_demand.save
        format.html { redirect_to @steam_demand, notice: 'Steam demand was successfully created.' }
        format.json { render json: @steam_demand, status: :created, location: @steam_demand }
      else
        format.html { render action: "new" }
        format.json { render json: @steam_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steam_demands/1
  # PUT /steam_demands/1.json
  def update
    @steam_demand = SteamDemand.find(params[:id])

    respond_to do |format|
      if @steam_demand.update_attributes(params[:steam_demand])
        format.html { redirect_to @steam_demand, notice: 'Steam demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steam_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_demands/1
  # DELETE /steam_demands/1.json
  def destroy
    @steam_demand = SteamDemand.find(params[:id])
    @steam_demand.destroy

    respond_to do |format|
      format.html { redirect_to steam_demands_url }
      format.json { head :no_content }
    end
  end
end
