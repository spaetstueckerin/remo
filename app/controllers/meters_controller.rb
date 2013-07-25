class MetersController < ApplicationController
  # GET /meters
  # GET /meters.json
  def index
    @meters = Meter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meters }
    end
  end

  # GET /meters/1
  # GET /meters/1.json
  def show
    @meter = Meter.find(params[:id])
    @meter_readings = MeterReading.find_all_by_meter_id(params[:id])

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Zeit')
    data_table.new_column('number', 'Verbrauch im Ablesezeitraum in kWh')
    
    @meter_readings.each do |data|
  	  if data.id > 6
  	    previous = MeterReading.find_by_id(data.id-1).readingValue
        data_table.add_row(["#{data.readingDate.strftime('%d.%m.%Y')}",data.readingValue-previous])
      else
      end
    end

    opts = { :width => 800, :height => 400, :title => 'Ablesungen', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::ColumnChart.new(data_table, opts)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meter }
    end
  end

  # GET /meters/new
  # GET /meters/new.json
  def new
    @meter = Meter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meter }
    end
  end

  # GET /meters/1/edit
  def edit
    @meter = Meter.find(params[:id])
  end

  # POST /meters
  # POST /meters.json
  def create
    @meter = Meter.new(params[:meter])

    respond_to do |format|
      if @meter.save
        format.html { redirect_to @meter, notice: 'Meter was successfully created.' }
        format.json { render json: @meter, status: :created, location: @meter }
      else
        format.html { render action: "new" }
        format.json { render json: @meter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meters/1
  # PUT /meters/1.json
  def update
    @meter = Meter.find(params[:id])

    respond_to do |format|
      if @meter.update_attributes(params[:meter])
        format.html { redirect_to @meter, notice: 'Meter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meters/1
  # DELETE /meters/1.json
  def destroy
    @meter = Meter.find(params[:id])
    @meter.destroy

    respond_to do |format|
      format.html { redirect_to meters_url }
      format.json { head :no_content }
    end
  end
end
