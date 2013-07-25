class MeasuringDataController < ApplicationController
  
  require 'csv'
  
  # GET /measuring_data
  # GET /measuring_data.json
  def index
    @measuring_data = MeasuringDatum.all
    @business_data = BusinessDatum.all
    
        data_table = GoogleVisualr::DataTable.new
        data_table.new_column('string', 'Zeit')
        data_table.new_column('number', 'Leistung')
        data_table.new_column('number', 'Grenzwert')
        #data_table.add_rows(24)
        
        @measuring_data.each do |data|
          data_table.add_row(["#{data.measuringTime.strftime('%H:%M')}",data.capacity, 1200])
        end
        
        #data_table.set_cell(0, 0, '2004')
        #data_table.set_cell(0, 1, 1000)
        #data_table.set_cell(0, 2, 400)
        #data_table.set_cell(1, 0, '2005')
        #data_table.set_cell(1, 1, 1170)
        #data_table.set_cell(1, 2, 460)
        #data_table.set_cell(2, 0, '2006')
        #data_table.set_cell(2, 1, 860)
        #data_table.set_cell(2, 2, 580)
        #data_table.set_cell(3, 0, '2007')
        #data_table.set_cell(3, 1, 1030)
        #data_table.set_cell(3, 2, 540)

     opts = { :width => 800, :height => 400, :title => 'Lastgangmessung', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @measuring_data }
    end
  end

  # GET /measuring_data/1
  # GET /measuring_data/1.json
  def show
    @measuring_datum = MeasuringDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @measuring_datum }
    end
  end

  # GET /measuring_data/new
  # GET /measuring_data/new.json
  def new
    @measuring_datum = MeasuringDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @measuring_datum }
    end
  end

  # GET /measuring_data/1/edit
  def edit
    @measuring_datum = MeasuringDatum.find(params[:id])
  end

  # POST /measuring_data
  # POST /measuring_data.json
  def create
    
    uploaded_io = params[:measuring_datum][:tsv_file]
    measuring = params[:measuring_datum][:mnumber]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
    file.write(uploaded_io.read)
  end
  
  CSV.foreach("#{Rails.root}/public/uploads/#{uploaded_io.original_filename}", {:headers => true, :col_sep => ";"}) do |row|
    new_record = MeasuringDatum.new(
    :measuringDate => row[0],
    :measuringTime => row[1],
    :capacity => row[2],
    :mnumber => measuring
    )
    new_record.save
  end
  
    respond_to do |format|

       format.html { redirect_to "/measuring_data", notice: 'Measuring datum was successfully created.' }
        format.json { render json: @measuring_datum, status: :created, location: @measuring_datum }

    end
  end

  # PUT /measuring_data/1
  # PUT /measuring_data/1.json
  def update
    @measuring_datum = MeasuringDatum.find(params[:id])

    respond_to do |format|
      if @measuring_datum.update_attributes(params[:measuring_datum])
        format.html { redirect_to @measuring_datum, notice: 'Measuring datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @measuring_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measuring_data/1
  # DELETE /measuring_data/1.json
  def destroy
    @measuring_datum = MeasuringDatum.find(params[:id])
    @measuring_datum.destroy

    respond_to do |format|
      format.html { redirect_to measuring_data_url }
      format.json { head :no_content }
    end
  end
end
