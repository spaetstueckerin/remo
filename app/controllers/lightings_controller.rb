class LightingsController < ApplicationController
  # GET /lightings
  # GET /lightings.json
  def index
    @lightings = Lighting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lightings }
    end
  end

  # GET /lightings/1
  # GET /lightings/1.json
  def show
    @lighting = Lighting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lighting }
    end
  end

  # GET /lightings/new
  # GET /lightings/new.json
  def new
    @lighting = Lighting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lighting }
    end
  end

  # GET /lightings/1/edit
  def edit
    @lighting = Lighting.find(params[:id])
  end

  # POST /lightings
  # POST /lightings.json
  def create
    @lighting = Lighting.new(params[:lighting])

    respond_to do |format|
      if @lighting.save
        format.html { redirect_to @lighting, notice: 'Lighting was successfully created.' }
        format.json { render json: @lighting, status: :created, location: @lighting }
      else
        format.html { render action: "new" }
        format.json { render json: @lighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lightings/1
  # PUT /lightings/1.json
  def update
    @lighting = Lighting.find(params[:id])

    respond_to do |format|
      if @lighting.update_attributes(params[:lighting])
        format.html { redirect_to @lighting, notice: 'Lighting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lightings/1
  # DELETE /lightings/1.json
  def destroy
    @lighting = Lighting.find(params[:id])
    @lighting.destroy

    respond_to do |format|
      format.html { redirect_to lightings_url }
      format.json { head :no_content }
    end
  end
end
