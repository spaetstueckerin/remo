class HotWaterDistributionYearsController < ApplicationController
  # GET /hot_water_distribution_years
  # GET /hot_water_distribution_years.json
  def index
    @hot_water_distribution_years = HotWaterDistributionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hot_water_distribution_years }
    end
  end

  # GET /hot_water_distribution_years/1
  # GET /hot_water_distribution_years/1.json
  def show
    @hot_water_distribution_year = HotWaterDistributionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hot_water_distribution_year }
    end
  end

  # GET /hot_water_distribution_years/new
  # GET /hot_water_distribution_years/new.json
  def new
    @hot_water_distribution_year = HotWaterDistributionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hot_water_distribution_year }
    end
  end

  # GET /hot_water_distribution_years/1/edit
  def edit
    @hot_water_distribution_year = HotWaterDistributionYear.find(params[:id])
  end

  # POST /hot_water_distribution_years
  # POST /hot_water_distribution_years.json
  def create
    @hot_water_distribution_year = HotWaterDistributionYear.new(params[:hot_water_distribution_year])

    respond_to do |format|
      if @hot_water_distribution_year.save
        format.html { redirect_to @hot_water_distribution_year, notice: 'Hot water distribution year was successfully created.' }
        format.json { render json: @hot_water_distribution_year, status: :created, location: @hot_water_distribution_year }
      else
        format.html { render action: "new" }
        format.json { render json: @hot_water_distribution_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hot_water_distribution_years/1
  # PUT /hot_water_distribution_years/1.json
  def update
    @hot_water_distribution_year = HotWaterDistributionYear.find(params[:id])

    respond_to do |format|
      if @hot_water_distribution_year.update_attributes(params[:hot_water_distribution_year])
        format.html { redirect_to @hot_water_distribution_year, notice: 'Hot water distribution year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hot_water_distribution_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_water_distribution_years/1
  # DELETE /hot_water_distribution_years/1.json
  def destroy
    @hot_water_distribution_year = HotWaterDistributionYear.find(params[:id])
    @hot_water_distribution_year.destroy

    respond_to do |format|
      format.html { redirect_to hot_water_distribution_years_url }
      format.json { head :no_content }
    end
  end
end
