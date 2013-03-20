class EnterpriseDataController < ApplicationController
  # GET /enterprise_data
  # GET /enterprise_data.json
  def index
    @enterprise_data = EnterpriseDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enterprise_data }
    end
  end

  # GET /enterprise_data/1
  # GET /enterprise_data/1.json
  def show
    @enterprise_datum = EnterpriseDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enterprise_datum }
    end
  end

  # GET /enterprise_data/new
  # GET /enterprise_data/new.json
  def new
    @enterprise_datum = EnterpriseDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enterprise_datum }
    end
  end

  # GET /enterprise_data/1/edit
  def edit
    @enterprise_datum = EnterpriseDatum.find(params[:id])
  end

  # POST /enterprise_data
  # POST /enterprise_data.json
  def create
    @enterprise_datum = EnterpriseDatum.new(params[:enterprise_datum])

    respond_to do |format|
      if @enterprise_datum.save
        format.html { redirect_to @enterprise_datum, notice: 'Enterprise datum was successfully created.' }
        format.json { render json: @enterprise_datum, status: :created, location: @enterprise_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @enterprise_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enterprise_data/1
  # PUT /enterprise_data/1.json
  def update
    @enterprise_datum = EnterpriseDatum.find(params[:id])

    respond_to do |format|
      if @enterprise_datum.update_attributes(params[:enterprise_datum])
        format.html { redirect_to @enterprise_datum, notice: 'Enterprise datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enterprise_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprise_data/1
  # DELETE /enterprise_data/1.json
  def destroy
    @enterprise_datum = EnterpriseDatum.find(params[:id])
    @enterprise_datum.destroy

    respond_to do |format|
      format.html { redirect_to enterprise_data_url }
      format.json { head :no_content }
    end
  end
end
