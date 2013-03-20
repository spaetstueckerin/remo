class HowtosController < ApplicationController
  # GET /howtos
  # GET /howtos.json
  def index
    @howtos = Howto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @howtos }
    end
  end

  # GET /howtos/1
  # GET /howtos/1.json
  def show
    @howto = Howto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @howto }
    end
  end

  # GET /howtos/new
  # GET /howtos/new.json
  def new
    @howto = Howto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @howto }
    end
  end

  # GET /howtos/1/edit
  def edit
    @howto = Howto.find(params[:id])
  end

  # POST /howtos
  # POST /howtos.json
  def create
    @howto = Howto.new(params[:howto])

    respond_to do |format|
      if @howto.save
        format.html { redirect_to @howto, notice: 'Howto was successfully created.' }
        format.json { render json: @howto, status: :created, location: @howto }
      else
        format.html { render action: "new" }
        format.json { render json: @howto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /howtos/1
  # PUT /howtos/1.json
  def update
    @howto = Howto.find(params[:id])

    respond_to do |format|
      if @howto.update_attributes(params[:howto])
        format.html { redirect_to @howto, notice: 'Howto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @howto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howtos/1
  # DELETE /howtos/1.json
  def destroy
    @howto = Howto.find(params[:id])
    @howto.destroy

    respond_to do |format|
      format.html { redirect_to howtos_url }
      format.json { head :no_content }
    end
  end
end
