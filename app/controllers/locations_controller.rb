class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.json
  def index
    #@locations = Location.find(:all, :order =>"floor ASC")
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @locations = Location.where(:enterprise_id => @enterprise.id).order(:building_id)
    #@locations = Location.find_all_by_enterprise_id(@enterprise.id, :order => "building_id ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.json
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.json
  def create
    # TODO: Check for a inconsistent combination (building_id, level_id), i.e., no such level in that building
    params[:location][:level_id] = Level.find_by_building_id_and_level(params[:location][:building_id], params[:location][:level_id]).id
    @location = Location.new(params[:location])
    @location.enterprise_id = User.find(session[:user_id]).enterprise_id

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render json: @location, status: :created, location: @location }
      else
        format.html { render action: "new" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.json
  def update
    # TODO: Check for a inconsistent combination (building_id, level_id), i.e., no such level in that building
    params[:location][:level_id] = Level.find_by_building_id_and_level(params[:location][:building_id], params[:location][:level_id]).id
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url }
      format.json { head :no_content }
    end
  end
end
