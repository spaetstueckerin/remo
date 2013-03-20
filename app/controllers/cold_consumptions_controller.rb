class ColdConsumptionsController < ApplicationController
  # GET /cold_consumptions
  # GET /cold_consumptions.json
  def index
    @cold_consumptions = ColdConsumption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_consumptions }
    end
  end

  # GET /cold_consumptions/1
  # GET /cold_consumptions/1.json
  def show
    @cold_consumption = ColdConsumption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_consumption }
    end
  end

  # GET /cold_consumptions/new
  # GET /cold_consumptions/new.json
  def new
    @cold_consumption = ColdConsumption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_consumption }
    end
  end

  # GET /cold_consumptions/1/edit
  def edit
    @cold_consumption = ColdConsumption.find(params[:id])
  end

  # POST /cold_consumptions
  # POST /cold_consumptions.json
  def create
    @cold_consumption = ColdConsumption.new(params[:cold_consumption])

    respond_to do |format|
      if @cold_consumption.save
        format.html { redirect_to @cold_consumption, notice: 'Cold consumption was successfully created.' }
        format.json { render json: @cold_consumption, status: :created, location: @cold_consumption }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_consumptions/1
  # PUT /cold_consumptions/1.json
  def update
    @cold_consumption = ColdConsumption.find(params[:id])

    respond_to do |format|
      if @cold_consumption.update_attributes(params[:cold_consumption])
        format.html { redirect_to @cold_consumption, notice: 'Cold consumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_consumptions/1
  # DELETE /cold_consumptions/1.json
  def destroy
    @cold_consumption = ColdConsumption.find(params[:id])
    @cold_consumption.destroy

    respond_to do |format|
      format.html { redirect_to cold_consumptions_url }
      format.json { head :no_content }
    end
  end
end
