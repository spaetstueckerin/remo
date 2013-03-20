class HotWaterDemandsController < ApplicationController
  # GET /hot_water_demands
  # GET /hot_water_demands.json
  def index
    @hot_water_demands = HotWaterDemand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_water_demands }
    end
  end

  # GET /hot_water_demands/1
  # GET /hot_water_demands/1.json
  def show
    @hot_water_demand = HotWaterDemand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_water_demand }
    end
  end

  # GET /hot_water_demands/new
  # GET /hot_water_demands/new.json
  def new
    @hot_water_demand = HotWaterDemand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_water_demand }
    end
  end

  # GET /hot_water_demands/1/edit
  def edit
    @hot_water_demand = HotWaterDemand.find(params[:id])
  end

  # POST /hot_water_demands
  # POST /hot_water_demands.json
  def create
    @hot_water_demand = HotWaterDemand.new(params[:hot_water_demand])

    respond_to do |format|
      if @hot_water_demand.save
        format.html { redirect_to @hot_water_demand, notice: 'Hot water demand was successfully created.' }
        format.json { render json: @hot_water_demand, status: :created, location: @hot_water_demand }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_water_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_water_demands/1
  # PUT /hot_water_demands/1.json
  def update
    @hot_water_demand = HotWaterDemand.find(params[:id])

    respond_to do |format|
      if @hot_water_demand.update_attributes(params[:hot_water_demand])
        format.html { redirect_to @hot_water_demand, notice: 'Hot water demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_water_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_water_demands/1
  # DELETE /hot_water_demands/1.json
  def destroy
    @hot_water_demand = HotWaterDemand.find(params[:id])
    @hot_water_demand.destroy

    respond_to do |format|
      format.html { redirect_to hot_water_demands_url }
      format.json { head :no_content }
    end
  end
end
