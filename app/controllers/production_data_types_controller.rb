class ProductionDataTypesController < ApplicationController
  # GET /production_data_types
  # GET /production_data_types.json
  def index
    @production_data_types = ProductionDataType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @production_data_types }
    end
  end

  # GET /production_data_types/1
  # GET /production_data_types/1.json
  def show
    @production_data_type = ProductionDataType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @production_data_type }
    end
  end

  # GET /production_data_types/new
  # GET /production_data_types/new.json
  def new
    @production_data_type = ProductionDataType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @production_data_type }
    end
  end

  # GET /production_data_types/1/edit
  def edit
    @production_data_type = ProductionDataType.find(params[:id])
  end

  # POST /production_data_types
  # POST /production_data_types.json
  def create
    @production_data_type = ProductionDataType.new(params[:production_data_type])

    respond_to do |format|
      if @production_data_type.save
        format.html { redirect_to @production_data_type, notice: 'Production data type was successfully created.' }
        format.json { render json: @production_data_type, status: :created, location: @production_data_type }
      else
        format.html { render action: "new" }
        format.json { render json: @production_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /production_data_types/1
  # PUT /production_data_types/1.json
  def update
    @production_data_type = ProductionDataType.find(params[:id])

    respond_to do |format|
      if @production_data_type.update_attributes(params[:production_data_type])
        format.html { redirect_to @production_data_type, notice: 'Production data type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @production_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_data_types/1
  # DELETE /production_data_types/1.json
  def destroy
    @production_data_type = ProductionDataType.find(params[:id])
    @production_data_type.destroy

    respond_to do |format|
      format.html { redirect_to production_data_types_url }
      format.json { head :no_content }
    end
  end
end
