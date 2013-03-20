class CompressedAirDemandsController < ApplicationController
  # GET /compressed_air_demands
  # GET /compressed_air_demands.json
  def index
    @compressed_air_demands = CompressedAirDemand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compressed_air_demands }
    end
  end

  # GET /compressed_air_demands/1
  # GET /compressed_air_demands/1.json
  def show
    @compressed_air_demand = CompressedAirDemand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compressed_air_demand }
    end
  end

  # GET /compressed_air_demands/new
  # GET /compressed_air_demands/new.json
  def new
    @compressed_air_demand = CompressedAirDemand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compressed_air_demand }
    end
  end

  # GET /compressed_air_demands/1/edit
  def edit
    @compressed_air_demand = CompressedAirDemand.find(params[:id])
  end

  # POST /compressed_air_demands
  # POST /compressed_air_demands.json
  def create
    @compressed_air_demand = CompressedAirDemand.new(params[:compressed_air_demand])

    respond_to do |format|
      if @compressed_air_demand.save
        format.html { redirect_to @compressed_air_demand, notice: 'Compressed air demand was successfully created.' }
        format.json { render json: @compressed_air_demand, status: :created, location: @compressed_air_demand }
      else
        format.html { render action: "new" }
        format.json { render json: @compressed_air_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compressed_air_demands/1
  # PUT /compressed_air_demands/1.json
  def update
    @compressed_air_demand = CompressedAirDemand.find(params[:id])

    respond_to do |format|
      if @compressed_air_demand.update_attributes(params[:compressed_air_demand])
        format.html { redirect_to @compressed_air_demand, notice: 'Compressed air demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compressed_air_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressed_air_demands/1
  # DELETE /compressed_air_demands/1.json
  def destroy
    @compressed_air_demand = CompressedAirDemand.find(params[:id])
    @compressed_air_demand.destroy

    respond_to do |format|
      format.html { redirect_to compressed_air_demands_url }
      format.json { head :no_content }
    end
  end
end
