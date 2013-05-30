class ProductionLevelsController < ApplicationController
  # GET /production_levels
  # GET /production_levels.json
  def index
    @production_levels = ProductionLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @production_levels }
    end
  end

  # GET /production_levels/1
  # GET /production_levels/1.json
  def show
    @production_level = ProductionLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @production_level }
    end
  end

  # GET /production_levels/new
  # GET /production_levels/new.json
  def new
    @production_level = ProductionLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @production_level }
    end
  end

  # GET /production_levels/1/edit
  def edit
    @production_level = ProductionLevel.find(params[:id])
  end

  # POST /production_levels
  # POST /production_levels.json
  def create
    @production_level = ProductionLevel.new(params[:production_level])

    respond_to do |format|
      if @production_level.save
        format.html { redirect_to @production_level, notice: 'Production level was successfully created.' }
        format.json { render json: @production_level, status: :created, location: @production_level }
      else
        format.html { render action: "new" }
        format.json { render json: @production_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /production_levels/1
  # PUT /production_levels/1.json
  def update
    @production_level = ProductionLevel.find(params[:id])

    respond_to do |format|
      if @production_level.update_attributes(params[:production_level])
        format.html { redirect_to @production_level, notice: 'Production level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @production_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_levels/1
  # DELETE /production_levels/1.json
  def destroy
    @production_level = ProductionLevel.find(params[:id])
    @production_level.destroy

    respond_to do |format|
      format.html { redirect_to production_levels_url }
      format.json { head :no_content }
    end
  end
end
