class SteamProductionsController < ApplicationController
  # GET /steam_productions
  # GET /steam_productions.json
  def index
    @steam_productions = SteamProduction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steam_productions }
    end
  end

  # GET /steam_productions/1
  # GET /steam_productions/1.json
  def show
    @steam_production = SteamProduction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steam_production }
    end
  end

  # GET /steam_productions/new
  # GET /steam_productions/new.json
  def new
    @steam_production = SteamProduction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steam_production }
    end
  end

  # GET /steam_productions/1/edit
  def edit
    @steam_production = SteamProduction.find(params[:id])
  end

  # POST /steam_productions
  # POST /steam_productions.json
  def create
    @steam_production = SteamProduction.new(params[:steam_production])

    respond_to do |format|
      if @steam_production.save
        format.html { redirect_to @steam_production, notice: 'Steam production was successfully created.' }
        format.json { render json: @steam_production, status: :created, location: @steam_production }
      else
        format.html { render action: "new" }
        format.json { render json: @steam_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steam_productions/1
  # PUT /steam_productions/1.json
  def update
    @steam_production = SteamProduction.find(params[:id])

    respond_to do |format|
      if @steam_production.update_attributes(params[:steam_production])
        format.html { redirect_to @steam_production, notice: 'Steam production was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steam_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steam_productions/1
  # DELETE /steam_productions/1.json
  def destroy
    @steam_production = SteamProduction.find(params[:id])
    @steam_production.destroy

    respond_to do |format|
      format.html { redirect_to steam_productions_url }
      format.json { head :no_content }
    end
  end
end
