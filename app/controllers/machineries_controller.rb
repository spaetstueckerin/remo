class MachineriesController < ApplicationController
  # GET /machineries
  # GET /machineries.json
  def index
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    
    @machineries = Machinery.find_all_by_enterpriseID(@enterprise.id)
    @machinery = Machinery.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @machineries }
    end
  end

  # GET /machineries/1
  # GET /machineries/1.json
  def show
    @machinery = Machinery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @machinery }
    end
  end

  # GET /machineries/new
  # GET /machineries/new.json
  def new
    @machinery = Machinery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @machinery }
    end
  end

  # GET /machineries/1/edit
  def edit
    @machinery = Machinery.find(params[:id])
  end

  # POST /machineries
  # POST /machineries.json
  def create
    @machinery = Machinery.new(params[:machinery])

    respond_to do |format|
      if @machinery.save
        format.html { redirect_to @machinery, notice: 'Machinery was successfully created.' }
        format.json { render json: @machinery, status: :created, location: @machinery }
      else
        format.html { render action: "new" }
        format.json { render json: @machinery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /machineries/1
  # PUT /machineries/1.json
  def update
    @machinery = Machinery.find(params[:id])

    respond_to do |format|
      if @machinery.update_attributes(params[:machinery])
        format.html { redirect_to @machinery, notice: 'Machinery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @machinery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machineries/1
  # DELETE /machineries/1.json
  def destroy
    @machinery = Machinery.find(params[:id])
    @machinery.destroy

    respond_to do |format|
      format.html { redirect_to machineries_url }
      format.json { head :no_content }
    end
  end
end
