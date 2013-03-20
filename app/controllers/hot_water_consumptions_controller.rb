class HotWaterConsumptionsController < ApplicationController
  # GET /hot_water_consumptions
  # GET /hot_water_consumptions.json
  def index
    @hot_water_consumptions = HotWaterConsumption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_water_consumptions }
    end
  end

  # GET /hot_water_consumptions/1
  # GET /hot_water_consumptions/1.json
  def show
    @hot_water_consumption = HotWaterConsumption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_water_consumption }
    end
  end

  # GET /hot_water_consumptions/new
  # GET /hot_water_consumptions/new.json
  def new
    @hot_water_consumption = HotWaterConsumption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_water_consumption }
    end
  end

  # GET /hot_water_consumptions/1/edit
  def edit
    @hot_water_consumption = HotWaterConsumption.find(params[:id])
  end

  # POST /hot_water_consumptions
  # POST /hot_water_consumptions.json
  def create
    @hot_water_consumption = HotWaterConsumption.new(params[:hot_water_consumption])

    respond_to do |format|
      if @hot_water_consumption.save
        format.html { redirect_to @hot_water_consumption, notice: 'Hot water consumption was successfully created.' }
        format.json { render json: @hot_water_consumption, status: :created, location: @hot_water_consumption }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_water_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_water_consumptions/1
  # PUT /hot_water_consumptions/1.json
  def update
    @hot_water_consumption = HotWaterConsumption.find(params[:id])

    respond_to do |format|
      if @hot_water_consumption.update_attributes(params[:hot_water_consumption])
        format.html { redirect_to @hot_water_consumption, notice: 'Hot water consumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_water_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_water_consumptions/1
  # DELETE /hot_water_consumptions/1.json
  def destroy
    @hot_water_consumption = HotWaterConsumption.find(params[:id])
    @hot_water_consumption.destroy

    respond_to do |format|
      format.html { redirect_to hot_water_consumptions_url }
      format.json { head :no_content }
    end
  end
end
