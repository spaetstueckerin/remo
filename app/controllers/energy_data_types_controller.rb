class EnergyDataTypesController < ApplicationController
  # GET /energy_data_types
  # GET /energy_data_types.json
  def index
    @energy_data_types = EnergyDataType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @energy_data_types }
    end
  end

  # GET /energy_data_types/1
  # GET /energy_data_types/1.json
  def show
    @energy_data_type = EnergyDataType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @energy_data_type }
    end
  end

  # GET /energy_data_types/new
  # GET /energy_data_types/new.json
  def new
    @energy_data_type = EnergyDataType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @energy_data_type }
    end
  end

  # GET /energy_data_types/1/edit
  def edit
    @energy_data_type = EnergyDataType.find(params[:id])
  end

  # POST /energy_data_types
  # POST /energy_data_types.json
  def create
    @energy_data_type = EnergyDataType.new(params[:energy_data_type])

    respond_to do |format|
      if @energy_data_type.save
        format.html { redirect_to @energy_data_type, notice: 'Energy data type was successfully created.' }
        format.json { render json: @energy_data_type, status: :created, location: @energy_data_type }
      else
        format.html { render action: "new" }
        format.json { render json: @energy_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /energy_data_types/1
  # PUT /energy_data_types/1.json
  def update
    @energy_data_type = EnergyDataType.find(params[:id])

    respond_to do |format|
      if @energy_data_type.update_attributes(params[:energy_data_type])
        format.html { redirect_to @energy_data_type, notice: 'Energy data type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @energy_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energy_data_types/1
  # DELETE /energy_data_types/1.json
  def destroy
    @energy_data_type = EnergyDataType.find(params[:id])
    @energy_data_type.destroy

    respond_to do |format|
      format.html { redirect_to energy_data_types_url }
      format.json { head :no_content }
    end
  end
end
