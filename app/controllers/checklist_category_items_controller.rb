class ChecklistCategoryItemsController < ApplicationController
  # GET /checklist_category_items
  # GET /checklist_category_items.json
  def index
    @checklist_category_items = ChecklistCategoryItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checklist_category_items }
    end
  end

  # GET /checklist_category_items/1
  # GET /checklist_category_items/1.json
  def show
    @checklist_category_item = ChecklistCategoryItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checklist_category_item }
    end
  end

  # GET /checklist_category_items/new
  # GET /checklist_category_items/new.json
  def new
    @checklist_category_item = ChecklistCategoryItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checklist_category_item }
    end
  end

  # GET /checklist_category_items/1/edit
  def edit
    @checklist_category_item = ChecklistCategoryItem.find(params[:id])
  end

  # POST /checklist_category_items
  # POST /checklist_category_items.json
  def create
    @checklist_category_item = ChecklistCategoryItem.new(params[:checklist_category_item])

    respond_to do |format|
      if @checklist_category_item.save
        format.html { redirect_to @checklist_category_item, notice: 'Checklist category item was successfully created.' }
        format.json { render json: @checklist_category_item, status: :created, location: @checklist_category_item }
      else
        format.html { render action: "new" }
        format.json { render json: @checklist_category_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checklist_category_items/1
  # PUT /checklist_category_items/1.json
  def update
    @checklist_category_item = ChecklistCategoryItem.find(params[:id])

    respond_to do |format|
      if @checklist_category_item.update_attributes(params[:checklist_category_item])
        format.html { redirect_to @checklist_category_item, notice: 'Checklist category item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checklist_category_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklist_category_items/1
  # DELETE /checklist_category_items/1.json
  def destroy
    @checklist_category_item = ChecklistCategoryItem.find(params[:id])
    @checklist_category_item.destroy

    respond_to do |format|
      format.html { redirect_to checklist_category_items_url }
      format.json { head :no_content }
    end
  end
end
