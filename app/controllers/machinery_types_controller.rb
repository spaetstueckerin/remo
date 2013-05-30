class MachineryTypesController < ApplicationController
  # GET /machinery_types
  # GET /machinery_types.json
  def index
    @machinery_types = MachineryType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @machinery_types }
    end
  end

  # GET /machinery_types/1
  # GET /machinery_types/1.json
  def show
    @machinery_type = MachineryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @machinery_type }
    end
  end

  # GET /machinery_types/new
  # GET /machinery_types/new.json
  def new
    @machinery_type = MachineryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @machinery_type }
    end
  end

  # GET /machinery_types/1/edit
  def edit
    @machinery_type = MachineryType.find(params[:id])
  end

  # POST /machinery_types
  # POST /machinery_types.json
  def create
    @machinery_type = MachineryType.new(params[:machinery_type])

    respond_to do |format|
      if @machinery_type.save
        format.html { redirect_to @machinery_type, notice: 'Machinery type was successfully created.' }
        format.json { render json: @machinery_type, status: :created, location: @machinery_type }
      else
        format.html { render action: "new" }
        format.json { render json: @machinery_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /machinery_types/1
  # PUT /machinery_types/1.json
  def update
    @machinery_type = MachineryType.find(params[:id])

    respond_to do |format|
      if @machinery_type.update_attributes(params[:machinery_type])
        format.html { redirect_to @machinery_type, notice: 'Machinery type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @machinery_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machinery_types/1
  # DELETE /machinery_types/1.json
  def destroy
    @machinery_type = MachineryType.find(params[:id])
    @machinery_type.destroy

    respond_to do |format|
      format.html { redirect_to machinery_types_url }
      format.json { head :no_content }
    end
  end
end
