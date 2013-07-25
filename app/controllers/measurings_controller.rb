class MeasuringsController < ApplicationController
  # GET /measurings
  # GET /measurings.json
  
  require 'csv'
  
  def index
    @measurings = Measuring.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @measurings }
    end
  end

  # GET /measurings/1
  # GET /measurings/1.json
  def show
    @measuring = Measuring.find(params[:id])
    
    logger.info params[:id]
    
    @measuring_data = MeasuringDatum.find_all_by_mnumber(params[:id])
    @business_data = BusinessDatum.all
    
        data_table = GoogleVisualr::DataTable.new
        data_table.new_column('string', 'Zeit')
        data_table.new_column('number', 'Leistung')
        data_table.new_column('number', 'Grenzwert')
        
        #für den Grenzwertstrich
        @measuring_data.each do |data|
          data_table.add_row(["#{data.measuringTime.strftime('%H:%M')}",data.capacity, 1200])
        end

     opts = { :width => 800, :height => 400, :title => 'Lastgangmessung', :legend => 'bottom' }
     @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @measuring }
    end
  end

  # GET /measurings/new
  # GET /measurings/new.json
  def new
    @measuring = Measuring.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @measuring }
    end
  end

  # GET /measurings/1/edit
  def edit
    @measuring = Measuring.find(params[:id])
  end

  # POST /measurings
  # POST /measurings.json
  def create
    #@measuring = Measuring.new(params[:measuring])
    
      uploaded_io = params[:measuring][:tsv_file]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
        file.write(uploaded_io.read)
      end

    CSV.foreach("#{Rails.root}/public/uploads/#{uploaded_io.original_filename}", {:headers => true, :col_sep => ";"}) do |row|
      new_record = MeasuringDatum.new(
      :measuringDate => row[0],
      :measuringTime => row[1],
      :capacity => row[2],
      )
      new_record.save
    end

    respond_to do |format|
      #if @measuring.save
        format.html { redirect_to @measuring, notice: 'Measuring was successfully created.' }
        format.json { render json: @measuring, status: :created, location: @measuring }
      #else
        #format.html { render action: "new" }
       # format.json { render json: @measuring.errors, status: :unprocessable_entity }
      #end
    end
  end

  # PUT /measurings/1
  # PUT /measurings/1.json
  def update
    @measuring = Measuring.find(params[:id])

    respond_to do |format|
      if @measuring.update_attributes(params[:measuring])
        format.html { redirect_to @measuring, notice: 'Measuring was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @measuring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurings/1
  # DELETE /measurings/1.json
  def destroy
    @measuring = Measuring.find(params[:id])
    @measuring.destroy

    respond_to do |format|
      format.html { redirect_to measurings_url }
      format.json { head :no_content }
    end
  end
end
