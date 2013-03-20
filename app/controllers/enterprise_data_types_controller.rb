class EnterpriseDataTypesController < ApplicationController
  # GET /enterprise_data_types
  # GET /enterprise_data_types.json
  def index
    @enterprise_data_types = EnterpriseDataType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enterprise_data_types }
    end
  end

  # GET /enterprise_data_types/1
  # GET /enterprise_data_types/1.json
  def show
    @enterprise_data_type = EnterpriseDataType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enterprise_data_type }
    end
  end

  # GET /enterprise_data_types/new
  # GET /enterprise_data_types/new.json
  def new
    @enterprise_data_type = EnterpriseDataType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enterprise_data_type }
    end
  end

  # GET /enterprise_data_types/1/edit
  def edit
    @enterprise_data_type = EnterpriseDataType.find(params[:id])
  end

  # POST /enterprise_data_types
  # POST /enterprise_data_types.json
  def create
    @enterprise_data_type = EnterpriseDataType.new(params[:enterprise_data_type])

    respond_to do |format|
      if @enterprise_data_type.save
        format.html { redirect_to @enterprise_data_type, notice: 'Enterprise data type was successfully created.' }
        format.json { render json: @enterprise_data_type, status: :created, location: @enterprise_data_type }
      else
        format.html { render action: "new" }
        format.json { render json: @enterprise_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enterprise_data_types/1
  # PUT /enterprise_data_types/1.json
  def update
    @enterprise_data_type = EnterpriseDataType.find(params[:id])

    respond_to do |format|
      if @enterprise_data_type.update_attributes(params[:enterprise_data_type])
        format.html { redirect_to @enterprise_data_type, notice: 'Enterprise data type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enterprise_data_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprise_data_types/1
  # DELETE /enterprise_data_types/1.json
  def destroy
    @enterprise_data_type = EnterpriseDataType.find(params[:id])
    @enterprise_data_type.destroy

    respond_to do |format|
      format.html { redirect_to enterprise_data_types_url }
      format.json { head :no_content }
    end
  end
end
