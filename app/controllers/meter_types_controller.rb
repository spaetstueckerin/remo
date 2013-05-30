class MeterTypesController < ApplicationController
  # GET /meter_types
  # GET /meter_types.json
  def index
    @meter_types = MeterType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meter_types }
    end
  end

  # GET /meter_types/1
  # GET /meter_types/1.json
  def show
    @meter_type = MeterType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meter_type }
    end
  end

  # GET /meter_types/new
  # GET /meter_types/new.json
  def new
    @meter_type = MeterType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meter_type }
    end
  end

  # GET /meter_types/1/edit
  def edit
    @meter_type = MeterType.find(params[:id])
  end

  # POST /meter_types
  # POST /meter_types.json
  def create
    @meter_type = MeterType.new(params[:meter_type])

    respond_to do |format|
      if @meter_type.save
        format.html { redirect_to @meter_type, notice: 'Meter type was successfully created.' }
        format.json { render json: @meter_type, status: :created, location: @meter_type }
      else
        format.html { render action: "new" }
        format.json { render json: @meter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meter_types/1
  # PUT /meter_types/1.json
  def update
    @meter_type = MeterType.find(params[:id])

    respond_to do |format|
      if @meter_type.update_attributes(params[:meter_type])
        format.html { redirect_to @meter_type, notice: 'Meter type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meter_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meter_types/1
  # DELETE /meter_types/1.json
  def destroy
    @meter_type = MeterType.find(params[:id])
    @meter_type.destroy

    respond_to do |format|
      format.html { redirect_to meter_types_url }
      format.json { head :no_content }
    end
  end
end
