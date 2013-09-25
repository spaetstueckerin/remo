class ProductionDataController < ApplicationController
  # GET /production_data
  # GET /production_data.json
  def index
    
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @production_data = ProductionDatum.find_all_by_enterprise_id(@enterprise.id, :order => "year DESC")
    @product_ranges = ProductRange.all
    @production_datum = ProductionDatum.new
    @product_range = ProductRange.new
    @produced_units = ProducedUnit.find(:all, :order => "year")
    @produced_unit = ProducedUnit.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @production_data }
    end
  end

  # GET /production_data/1
  # GET /production_data/1.json
  def show
    @production_datum = ProductionDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @production_datum }
    end
  end

  # GET /production_data/new
  # GET /production_data/new.json
  def new
    @production_datum = ProductionDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @production_datum }
    end
  end

  # GET /production_data/1/edit
  def edit
    @production_datum = ProductionDatum.find(params[:id])
  end

  # POST /production_data
  # POST /production_data.json
  def create
    @production_datum = ProductionDatum.new(params[:production_datum])

    respond_to do |format|
      if @production_datum.save
        format.html { redirect_to '/production_data', notice: 'Production datum was successfully created.' }
        format.json { render json: @production_datum, status: :created, location: @production_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @production_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /production_data/1
  # PUT /production_data/1.json
  def update
    @production_datum = ProductionDatum.find(params[:id])

    respond_to do |format|
      if @production_datum.update_attributes(params[:production_datum])
        format.html { redirect_to @production_datum, notice: 'Production datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @production_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_data/1
  # DELETE /production_data/1.json
  def destroy
    @production_datum = ProductionDatum.find(params[:id])
    @production_datum.destroy

    respond_to do |format|
      format.html { redirect_to production_data_url }
      format.json { head :no_content }
    end
  end
end
