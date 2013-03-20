class HotWaterDistributionsController < ApplicationController
  # GET /hot_water_distributions
  # GET /hot_water_distributions.json
  def index
    @hot_water_distributions = HotWaterDistribution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_water_distributions }
    end
  end

  # GET /hot_water_distributions/1
  # GET /hot_water_distributions/1.json
  def show
    @hot_water_distribution = HotWaterDistribution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_water_distribution }
    end
  end

  # GET /hot_water_distributions/new
  # GET /hot_water_distributions/new.json
  def new
    @hot_water_distribution = HotWaterDistribution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_water_distribution }
    end
  end

  # GET /hot_water_distributions/1/edit
  def edit
    @hot_water_distribution = HotWaterDistribution.find(params[:id])
  end

  # POST /hot_water_distributions
  # POST /hot_water_distributions.json
  def create
    @hot_water_distribution = HotWaterDistribution.new(params[:hot_water_distribution])

    respond_to do |format|
      if @hot_water_distribution.save
        format.html { redirect_to @hot_water_distribution, notice: 'Hot water distribution was successfully created.' }
        format.json { render json: @hot_water_distribution, status: :created, location: @hot_water_distribution }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_water_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_water_distributions/1
  # PUT /hot_water_distributions/1.json
  def update
    @hot_water_distribution = HotWaterDistribution.find(params[:id])

    respond_to do |format|
      if @hot_water_distribution.update_attributes(params[:hot_water_distribution])
        format.html { redirect_to @hot_water_distribution, notice: 'Hot water distribution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_water_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_water_distributions/1
  # DELETE /hot_water_distributions/1.json
  def destroy
    @hot_water_distribution = HotWaterDistribution.find(params[:id])
    @hot_water_distribution.destroy

    respond_to do |format|
      format.html { redirect_to hot_water_distributions_url }
      format.json { head :no_content }
    end
  end
end
