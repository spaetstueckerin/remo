class ColdDistributionsController < ApplicationController
  # GET /cold_distributions
  # GET /cold_distributions.json
  def index
    @cold_distributions = ColdDistribution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_distributions }
    end
  end

  # GET /cold_distributions/1
  # GET /cold_distributions/1.json
  def show
    @cold_distribution = ColdDistribution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_distribution }
    end
  end

  # GET /cold_distributions/new
  # GET /cold_distributions/new.json
  def new
    @cold_distribution = ColdDistribution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_distribution }
    end
  end

  # GET /cold_distributions/1/edit
  def edit
    @cold_distribution = ColdDistribution.find(params[:id])
  end

  # POST /cold_distributions
  # POST /cold_distributions.json
  def create
    @cold_distribution = ColdDistribution.new(params[:cold_distribution])

    respond_to do |format|
      if @cold_distribution.save
        format.html { redirect_to @cold_distribution, notice: 'Cold distribution was successfully created.' }
        format.json { render json: @cold_distribution, status: :created, location: @cold_distribution }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_distributions/1
  # PUT /cold_distributions/1.json
  def update
    @cold_distribution = ColdDistribution.find(params[:id])

    respond_to do |format|
      if @cold_distribution.update_attributes(params[:cold_distribution])
        format.html { redirect_to @cold_distribution, notice: 'Cold distribution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_distributions/1
  # DELETE /cold_distributions/1.json
  def destroy
    @cold_distribution = ColdDistribution.find(params[:id])
    @cold_distribution.destroy

    respond_to do |format|
      format.html { redirect_to cold_distributions_url }
      format.json { head :no_content }
    end
  end
end
