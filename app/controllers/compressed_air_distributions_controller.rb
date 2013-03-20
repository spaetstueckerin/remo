class CompressedAirDistributionsController < ApplicationController
  # GET /compressed_air_distributions
  # GET /compressed_air_distributions.json
  def index
    @compressed_air_distributions = CompressedAirDistribution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compressed_air_distributions }
    end
  end

  # GET /compressed_air_distributions/1
  # GET /compressed_air_distributions/1.json
  def show
    @compressed_air_distribution = CompressedAirDistribution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compressed_air_distribution }
    end
  end

  # GET /compressed_air_distributions/new
  # GET /compressed_air_distributions/new.json
  def new
    @compressed_air_distribution = CompressedAirDistribution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compressed_air_distribution }
    end
  end

  # GET /compressed_air_distributions/1/edit
  def edit
    @compressed_air_distribution = CompressedAirDistribution.find(params[:id])
  end

  # POST /compressed_air_distributions
  # POST /compressed_air_distributions.json
  def create
    @compressed_air_distribution = CompressedAirDistribution.new(params[:compressed_air_distribution])

    respond_to do |format|
      if @compressed_air_distribution.save
        format.html { redirect_to @compressed_air_distribution, notice: 'Compressed air distribution was successfully created.' }
        format.json { render json: @compressed_air_distribution, status: :created, location: @compressed_air_distribution }
      else
        format.html { render action: "new" }
        format.json { render json: @compressed_air_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compressed_air_distributions/1
  # PUT /compressed_air_distributions/1.json
  def update
    @compressed_air_distribution = CompressedAirDistribution.find(params[:id])

    respond_to do |format|
      if @compressed_air_distribution.update_attributes(params[:compressed_air_distribution])
        format.html { redirect_to @compressed_air_distribution, notice: 'Compressed air distribution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compressed_air_distribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressed_air_distributions/1
  # DELETE /compressed_air_distributions/1.json
  def destroy
    @compressed_air_distribution = CompressedAirDistribution.find(params[:id])
    @compressed_air_distribution.destroy

    respond_to do |format|
      format.html { redirect_to compressed_air_distributions_url }
      format.json { head :no_content }
    end
  end
end
