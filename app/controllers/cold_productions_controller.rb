class ColdProductionsController < ApplicationController
  # GET /cold_productions
  # GET /cold_productions.json
  def index
    @cold_productions = ColdProduction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cold_productions }
    end
  end

  # GET /cold_productions/1
  # GET /cold_productions/1.json
  def show
    @cold_production = ColdProduction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cold_production }
    end
  end

  # GET /cold_productions/new
  # GET /cold_productions/new.json
  def new
    @cold_production = ColdProduction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cold_production }
    end
  end

  # GET /cold_productions/1/edit
  def edit
    @cold_production = ColdProduction.find(params[:id])
  end

  # POST /cold_productions
  # POST /cold_productions.json
  def create
    @cold_production = ColdProduction.new(params[:cold_production])

    respond_to do |format|
      if @cold_production.save
        format.html { redirect_to @cold_production, notice: 'Cold production was successfully created.' }
        format.json { render json: @cold_production, status: :created, location: @cold_production }
      else
        format.html { render action: "new" }
        format.json { render json: @cold_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cold_productions/1
  # PUT /cold_productions/1.json
  def update
    @cold_production = ColdProduction.find(params[:id])

    respond_to do |format|
      if @cold_production.update_attributes(params[:cold_production])
        format.html { redirect_to @cold_production, notice: 'Cold production was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cold_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cold_productions/1
  # DELETE /cold_productions/1.json
  def destroy
    @cold_production = ColdProduction.find(params[:id])
    @cold_production.destroy

    respond_to do |format|
      format.html { redirect_to cold_productions_url }
      format.json { head :no_content }
    end
  end
end
