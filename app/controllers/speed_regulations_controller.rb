class SpeedRegulationsController < ApplicationController
  # GET /speed_regulations
  # GET /speed_regulations.json
  def index
    @speed_regulations = SpeedRegulation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @speed_regulations }
    end
  end

  # GET /speed_regulations/1
  # GET /speed_regulations/1.json
  def show
    @speed_regulation = SpeedRegulation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @speed_regulation }
    end
  end

  # GET /speed_regulations/new
  # GET /speed_regulations/new.json
  def new
    @speed_regulation = SpeedRegulation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @speed_regulation }
    end
  end

  # GET /speed_regulations/1/edit
  def edit
    @speed_regulation = SpeedRegulation.find(params[:id])
  end

  # POST /speed_regulations
  # POST /speed_regulations.json
  def create
    @speed_regulation = SpeedRegulation.new(params[:speed_regulation])

    respond_to do |format|
      if @speed_regulation.save
        format.html { redirect_to @speed_regulation, notice: 'Speed regulation was successfully created.' }
        format.json { render json: @speed_regulation, status: :created, location: @speed_regulation }
      else
        format.html { render action: "new" }
        format.json { render json: @speed_regulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /speed_regulations/1
  # PUT /speed_regulations/1.json
  def update
    @speed_regulation = SpeedRegulation.find(params[:id])

    respond_to do |format|
      if @speed_regulation.update_attributes(params[:speed_regulation])
        format.html { redirect_to @speed_regulation, notice: 'Speed regulation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @speed_regulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speed_regulations/1
  # DELETE /speed_regulations/1.json
  def destroy
    @speed_regulation = SpeedRegulation.find(params[:id])
    @speed_regulation.destroy

    respond_to do |format|
      format.html { redirect_to speed_regulations_url }
      format.json { head :no_content }
    end
  end
end
