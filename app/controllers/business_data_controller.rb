class BusinessDataController < ApplicationController
  # GET /business_data
  # GET /business_data.json
  def index
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @business_data = BusinessDatum.find_all_by_enterpriseId(@enterprise.id, :order => "year DESC")
    @business_datum = BusinessDatum.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_data }
    end
  end

  # GET /business_data/1
  # GET /business_data/1.json
  def show
    @business_datum = BusinessDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_datum }
    end
  end

  # GET /business_data/new
  # GET /business_data/new.json
  def new
    @business_datum = BusinessDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_datum }
    end
  end

  # GET /business_data/1/edit
  def edit
    @business_datum = BusinessDatum.find(params[:id])
  end

  # POST /business_data
  # POST /business_data.json
  def create
    @business_datum = BusinessDatum.new(params[:business_datum])

    respond_to do |format|
      if @business_datum.save
        format.html { redirect_to @business_datum, notice: 'Business datum was successfully created.' }
        format.json { render json: @business_datum, status: :created, location: @business_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @business_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_data/1
  # PUT /business_data/1.json
  def update
    @business_datum = BusinessDatum.find(params[:id])

    respond_to do |format|
      if @business_datum.update_attributes(params[:business_datum])
        format.html { redirect_to @business_datum, notice: 'Business datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_data/1
  # DELETE /business_data/1.json
  def destroy
    @business_datum = BusinessDatum.find(params[:id])
    @business_datum.destroy

    respond_to do |format|
      format.html { redirect_to business_data_url }
      format.json { head :no_content }
    end
  end
end
