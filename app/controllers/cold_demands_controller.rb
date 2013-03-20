class ColdDemandsController < ApplicationController
  # GET /cold_demands
  # GET /cold_demands.json
  def index
    @cold_demands = ColdDemand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_demands }
    end
  end

  # GET /cold_demands/1
  # GET /cold_demands/1.json
  def show
    @cold_demand = ColdDemand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_demand }
    end
  end

  # GET /cold_demands/new
  # GET /cold_demands/new.json
  def new
    @cold_demand = ColdDemand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_demand }
    end
  end

  # GET /cold_demands/1/edit
  def edit
    @cold_demand = ColdDemand.find(params[:id])
  end

  # POST /cold_demands
  # POST /cold_demands.json
  def create
    @cold_demand = ColdDemand.new(params[:cold_demand])

    respond_to do |format|
      if @cold_demand.save
        format.html { redirect_to @cold_demand, notice: 'Cold demand was successfully created.' }
        format.json { render json: @cold_demand, status: :created, location: @cold_demand }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_demands/1
  # PUT /cold_demands/1.json
  def update
    @cold_demand = ColdDemand.find(params[:id])

    respond_to do |format|
      if @cold_demand.update_attributes(params[:cold_demand])
        format.html { redirect_to @cold_demand, notice: 'Cold demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_demands/1
  # DELETE /cold_demands/1.json
  def destroy
    @cold_demand = ColdDemand.find(params[:id])
    @cold_demand.destroy

    respond_to do |format|
      format.html { redirect_to cold_demands_url }
      format.json { head :no_content }
    end
  end
end
