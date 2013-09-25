class ProductRangesController < ApplicationController
  # GET /product_ranges
  # GET /product_ranges.json
  def index
    @product_ranges = ProductRange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_ranges }
    end
  end

  # GET /product_ranges/1
  # GET /product_ranges/1.json
  def show
    @product_range = ProductRange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_range }
    end
  end

  # GET /product_ranges/new
  # GET /product_ranges/new.json
  def new
    @product_range = ProductRange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_range }
    end
  end

  # GET /product_ranges/1/edit
  def edit
    @product_range = ProductRange.find(params[:id])
  end

  # POST /product_ranges
  # POST /product_ranges.json
  def create
    @product_range = ProductRange.new(params[:product_range])

    respond_to do |format|
      if @product_range.save
        format.html { redirect_to '/production_data', notice: 'Product range was successfully created.' }
        format.json { render json: @product_range, status: :created, location: @product_range }
      else
        format.html { render action: "new" }
        format.json { render json: @product_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_ranges/1
  # PUT /product_ranges/1.json
  def update
    @product_range = ProductRange.find(params[:id])

    respond_to do |format|
      if @product_range.update_attributes(params[:product_range])
        format.html { redirect_to @product_range, notice: 'Product range was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_ranges/1
  # DELETE /product_ranges/1.json
  def destroy
    @product_range = ProductRange.find(params[:id])
    @product_range.destroy

    respond_to do |format|
      format.html { redirect_to product_ranges_url }
      format.json { head :no_content }
    end
  end
end
