class ProduktionSitesController < ApplicationController
  # GET /produktion_sites
  # GET /produktion_sites.json
  def index
    @produktion_sites = ProduktionSite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @produktion_sites }
    end
  end

  # GET /produktion_sites/1
  # GET /produktion_sites/1.json
  def show
    @produktion_site = ProduktionSite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @produktion_site }
    end
  end

  # GET /produktion_sites/new
  # GET /produktion_sites/new.json
  def new
    @produktion_site = ProduktionSite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @produktion_site }
    end
  end

  # GET /produktion_sites/1/edit
  def edit
    @produktion_site = ProduktionSite.find(params[:id])
  end

  # POST /produktion_sites
  # POST /produktion_sites.json
  def create
    @produktion_site = ProduktionSite.new(params[:produktion_site])

    respond_to do |format|
      if @produktion_site.save
        format.html { redirect_to @produktion_site, notice: 'Produktion site was successfully created.' }
        format.json { render json: @produktion_site, status: :created, location: @produktion_site }
      else
        format.html { render action: "new" }
        format.json { render json: @produktion_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /produktion_sites/1
  # PUT /produktion_sites/1.json
  def update
    @produktion_site = ProduktionSite.find(params[:id])

    respond_to do |format|
      if @produktion_site.update_attributes(params[:produktion_site])
        format.html { redirect_to @produktion_site, notice: 'Produktion site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @produktion_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produktion_sites/1
  # DELETE /produktion_sites/1.json
  def destroy
    @produktion_site = ProduktionSite.find(params[:id])
    @produktion_site.destroy

    respond_to do |format|
      format.html { redirect_to produktion_sites_url }
      format.json { head :no_content }
    end
  end
end
