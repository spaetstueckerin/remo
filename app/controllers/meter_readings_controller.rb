class MeterReadingsController < ApplicationController
  # GET /meter_readings
  # GET /meter_readings.json
  def index
    @meter_readings = MeterReading.find(:all, :order => "readingDate")
    
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

     opts = { :width => 800, :height => 400, :title => 'Zählerlesungen', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::ColumnChart.new(data_table, opts)
    
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
        format.html { redirect_to "/meter_readings", notice: 'Zaehlerlesung wurde erfolgreich erstellt.' }
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
        format.html { redirect_to @meter_reading, notice: 'Zaehlerlesung wurde erfolgreich bearbeitet.' }
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
