class WarningsController < ApplicationController
  # GET /warnings
  # GET /warnings.json
  def index
    @warnings = Warning.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @warnings }
    end
  end

  # GET /warnings/1
  # GET /warnings/1.json
  def show
    @warning = Warning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @warning }
    end
  end

  # GET /warnings/new
  # GET /warnings/new.json
  def new
    @warning = Warning.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @warning }
    end
  end

  # GET /warnings/1/edit
  def edit
    @warning = Warning.find(params[:id])
  end

  # POST /warnings
  # POST /warnings.json
  def create
    @warning = Warning.new(params[:warning])

    respond_to do |format|
      if @warning.save
        format.html { redirect_to @warning, notice: 'Warning was successfully created.' }
        format.json { render json: @warning, status: :created, location: @warning }
      else
        format.html { render action: "new" }
        format.json { render json: @warning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /warnings/1
  # PUT /warnings/1.json
  def update
    @warning = Warning.find(params[:id])

    respond_to do |format|
      if @warning.update_attributes(params[:warning])
        format.html { redirect_to @warning, notice: 'Warning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @warning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warnings/1
  # DELETE /warnings/1.json
  def destroy
    @warning = Warning.find(params[:id])
    @warning.destroy

    respond_to do |format|
      format.html { redirect_to warnings_url }
      format.json { head :no_content }
    end
  end
end
