class ChecklistCategoriesController < ApplicationController
  # GET /checklist_categories
  # GET /checklist_categories.json
  def index
    @checklist_categories = ChecklistCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checklist_categories }
    end
  end

  # GET /checklist_categories/1
  # GET /checklist_categories/1.json
  def show
    @checklist_category = ChecklistCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checklist_category }
    end
  end

  # GET /checklist_categories/new
  # GET /checklist_categories/new.json
  def new
    @checklist_category = ChecklistCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checklist_category }
    end
  end

  # GET /checklist_categories/1/edit
  def edit
    @checklist_category = ChecklistCategory.find(params[:id])
  end

  # POST /checklist_categories
  # POST /checklist_categories.json
  def create
    @checklist_category = ChecklistCategory.new(params[:checklist_category])

    respond_to do |format|
      if @checklist_category.save
        format.html { redirect_to @checklist_category, notice: 'Checklist category was successfully created.' }
        format.json { render json: @checklist_category, status: :created, location: @checklist_category }
      else
        format.html { render action: "new" }
        format.json { render json: @checklist_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checklist_categories/1
  # PUT /checklist_categories/1.json
  def update
    @checklist_category = ChecklistCategory.find(params[:id])

    respond_to do |format|
      if @checklist_category.update_attributes(params[:checklist_category])
        format.html { redirect_to @checklist_category, notice: 'Checklist category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checklist_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklist_categories/1
  # DELETE /checklist_categories/1.json
  def destroy
    @checklist_category = ChecklistCategory.find(params[:id])
    @checklist_category.destroy

    respond_to do |format|
      format.html { redirect_to checklist_categories_url }
      format.json { head :no_content }
    end
  end
end
