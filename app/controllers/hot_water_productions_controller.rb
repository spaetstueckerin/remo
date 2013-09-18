class HotWaterProductionsController < ApplicationController
  # GET /hot_water_productions
  # GET /hot_water_productions.json
  def index
    @hot_water_productions = HotWaterProduction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_water_productions }
    end
  end

  # GET /hot_water_productions/1
  # GET /hot_water_productions/1.json
  def show
    @hot_water_production = HotWaterProduction.find(params[:id])
    @hot_water_production_years = HotWaterProductionYear.find_all_by_hotWaterProduction_id(params[:id], :order =>"year_id DESC")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_water_production }
    end
  end

  # GET /hot_water_productions/new
  # GET /hot_water_productions/new.json
  def new
    @hot_water_production = HotWaterProduction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_water_production }
    end
  end

  # GET /hot_water_productions/1/edit
  def edit
    @hot_water_production = HotWaterProduction.find(params[:id])
  end

  # POST /hot_water_productions
  # POST /hot_water_productions.json
  def create
    @hot_water_production = HotWaterProduction.new(params[:hot_water_production])

    respond_to do |format|
      if @hot_water_production.save
        format.html { redirect_to @hot_water_production, notice: 'Hot water production was successfully created.' }
        format.json { render json: @hot_water_production, status: :created, location: @hot_water_production }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_water_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_water_productions/1
  # PUT /hot_water_productions/1.json
  def update
    @hot_water_production = HotWaterProduction.find(params[:id])

    respond_to do |format|
      if @hot_water_production.update_attributes(params[:hot_water_production])
        format.html { redirect_to @hot_water_production, notice: 'Hot water production was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_water_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_water_productions/1
  # DELETE /hot_water_productions/1.json
  def destroy
    @hot_water_production = HotWaterProduction.find(params[:id])
    @hot_water_production.destroy

    respond_to do |format|
      format.html { redirect_to hot_water_productions_url }
      format.json { head :no_content }
    end
  end
end
