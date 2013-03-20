class ColdDistributionYearsController < ApplicationController
  # GET /cold_distribution_years
  # GET /cold_distribution_years.json
  def index
    @cold_distribution_years = ColdDistributionYear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_distribution_years }
    end
  end

  # GET /cold_distribution_years/1
  # GET /cold_distribution_years/1.json
  def show
    @cold_distribution_year = ColdDistributionYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_distribution_year }
    end
  end

  # GET /cold_distribution_years/new
  # GET /cold_distribution_years/new.json
  def new
    @cold_distribution_year = ColdDistributionYear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_distribution_year }
    end
  end

  # GET /cold_distribution_years/1/edit
  def edit
    @cold_distribution_year = ColdDistributionYear.find(params[:id])
  end

  # POST /cold_distribution_years
  # POST /cold_distribution_years.json
  def create
    @cold_distribution_year = ColdDistributionYear.new(params[:cold_distribution_year])

    respond_to do |format|
      if @cold_distribution_year.save
        format.html { redirect_to @cold_distribution_year, notice: 'Cold distribution year was successfully created.' }
        format.json { render json: @cold_distribution_year, status: :created, location: @cold_distribution_year }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_distribution_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_distribution_years/1
  # PUT /cold_distribution_years/1.json
  def update
    @cold_distribution_year = ColdDistributionYear.find(params[:id])

    respond_to do |format|
      if @cold_distribution_year.update_attributes(params[:cold_distribution_year])
        format.html { redirect_to @cold_distribution_year, notice: 'Cold distribution year was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_distribution_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_distribution_years/1
  # DELETE /cold_distribution_years/1.json
  def destroy
    @cold_distribution_year = ColdDistributionYear.find(params[:id])
    @cold_distribution_year.destroy

    respond_to do |format|
      format.html { redirect_to cold_distribution_years_url }
      format.json { head :no_content }
    end
  end
end
