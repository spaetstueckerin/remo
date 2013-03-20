class BusinessDataTypesController < ApplicationController
  # GET /business_data_types
  # GET /business_data_types.json
  def index
    @business_data_types = BusinessDataType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_data_types }
    end
  end

  # GET /business_data_types/1
  # GET /business_data_types/1.json
  def show
    @business_data_type = BusinessDataType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_data_type }
    end
  end

  # GET /business_data_types/new
  # GET /business_data_types/new.json
  def new
    @business_data_type = BusinessDataType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_data_type }
    end
  end

  # GET /business_data_types/1/edit
  def edit
    @business_data_type = BusinessDataType.find(params[:id])
  end

  # POST /business_data_types
  # POST /business_data_types.json
  def create
    @business_data_type = BusinessDataType.new(params[:business_data_type])

    respond_to do |format|
      if @business_data_type.save
        format.html { redirect_to @business_data_type, notice: 'Business data type was successfully created.' }
        format.json { render json: @business_data_type, status: :created, location: @business_data_type }
      else
        format.html { render action: "new" }
        format.json { render json: @business_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_data_types/1
  # PUT /business_data_types/1.json
  def update
    @business_data_type = BusinessDataType.find(params[:id])

    respond_to do |format|
      if @business_data_type.update_attributes(params[:business_data_type])
        format.html { redirect_to @business_data_type, notice: 'Business data type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_data_types/1
  # DELETE /business_data_types/1.json
  def destroy
    @business_data_type = BusinessDataType.find(params[:id])
    @business_data_type.destroy

    respond_to do |format|
      format.html { redirect_to business_data_types_url }
      format.json { head :no_content }
    end
  end
end
