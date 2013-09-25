class ProducedUnitsController < ApplicationController
  # GET /produced_units
  # GET /produced_units.json
  def index
    @produced_units = ProducedUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produced_units }
    end
  end

  # GET /produced_units/1
  # GET /produced_units/1.json
  def show
    @produced_unit = ProducedUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produced_unit }
    end
  end

  # GET /produced_units/new
  # GET /produced_units/new.json
  def new
    @produced_unit = ProducedUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produced_unit }
    end
  end

  # GET /produced_units/1/edit
  def edit
    @produced_unit = ProducedUnit.find(params[:id])
  end

  # POST /produced_units
  # POST /produced_units.json
  def create
    @produced_unit = ProducedUnit.new(params[:produced_unit])

    respond_to do |format|
      if @produced_unit.save
        format.html { redirect_to '/production_data', notice: 'Produced unit was successfully created.' }
        format.json { render json: @produced_unit, status: :created, location: @produced_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @produced_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /produced_units/1
  # PUT /produced_units/1.json
  def update
    @produced_unit = ProducedUnit.find(params[:id])

    respond_to do |format|
      if @produced_unit.update_attributes(params[:produced_unit])
        format.html { redirect_to @produced_unit, notice: 'Produced unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produced_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produced_units/1
  # DELETE /produced_units/1.json
  def destroy
    @produced_unit = ProducedUnit.find(params[:id])
    @produced_unit.destroy

    respond_to do |format|
      format.html { redirect_to produced_units_url }
      format.json { head :no_content }
    end
  end
end
