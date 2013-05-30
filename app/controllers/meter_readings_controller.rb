class MeterReadingsController < ApplicationController
  # GET /meter_readings
  # GET /meter_readings.json
  def index
    @meter_readings = MeterReading.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meter_readings }
    end
  end
  
  def previous
    @previous = MeterReading.find(params[:id]-1)
  end

  # GET /meter_readings/1
  # GET /meter_readings/1.json
  def show
    @meter_reading = MeterReading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meter_reading }
    end
  end

  # GET /meter_readings/new
  # GET /meter_readings/new.json
  def new
    @meter_reading = MeterReading.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meter_reading }
    end
  end

  # GET /meter_readings/1/edit
  def edit
    @meter_reading = MeterReading.find(params[:id])
  end

  # POST /meter_readings
  # POST /meter_readings.json
  def create
    @meter_reading = MeterReading.new(params[:meter_reading])

    respond_to do |format|
      if @meter_reading.save
        format.html { redirect_to @meter_reading, notice: 'Meter reading was successfully created.' }
        format.json { render json: @meter_reading, status: :created, location: @meter_reading }
      else
        format.html { render action: "new" }
        format.json { render json: @meter_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meter_readings/1
  # PUT /meter_readings/1.json
  def update
    @meter_reading = MeterReading.find(params[:id])

    respond_to do |format|
      if @meter_reading.update_attributes(params[:meter_reading])
        format.html { redirect_to @meter_reading, notice: 'Meter reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meter_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meter_readings/1
  # DELETE /meter_readings/1.json
  def destroy
    @meter_reading = MeterReading.find(params[:id])
    @meter_reading.destroy

    respond_to do |format|
      format.html { redirect_to meter_readings_url }
      format.json { head :no_content }
    end
  end
end
