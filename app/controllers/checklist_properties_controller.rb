class ChecklistPropertiesController < ApplicationController
  # GET /checklist_properties
  # GET /checklist_properties.json
  def index
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # GET /checklist_properties/1
  # GET /checklist_properties/1.json
  def show
    @checklist_properties = ChecklistProperty.find(params[:id])
    checklist_property_id = @checklist_properties.id
    checklist_definition_id = @checklist_properties.checklist_definition_id
    @checklist = Checklist.find_all_by_checklist_property_id(checklist_property_id)
    @checklist_definition = ChecklistDefinition.find(checklist_definition_id)
    @checklist_categories = ChecklistCategory.find_all_by_checklist_definition_id(checklist_definition_id)
    @checklist_b =  ChecklistCategoryItem.find(:all, :conditions => "item_head <> 'none'")
    @checklist_data = ChecklistCategoryItem.find_all_by_checklist_definition_id(checklist_definition_id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checklist_properties }
      format.json { render json: @checklist }
      format.json { render json: @checklist_categories }
      format.json { render json: @checklist_b }
      format.json { render json: @checklist_definition }
      format.json { render json: @checklist_data }
    end
  end

  # GET /checklist_properties/new
  # GET /checklist_properties/new.json
  def new
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # GET /checklist_properties/1/edit
  def edit
    @checklist_properties = ChecklistProperty.find(params[:id])
    checklist_property_id = @checklist_properties.id
    checklist_definition_id = @checklist_properties.checklist_definition_id
    @checklist = Checklist.find_all_by_checklist_property_id(checklist_property_id)
    @checklist_definition = ChecklistDefinition.find(checklist_definition_id)
    @checklist_categories = ChecklistCategory.find_all_by_checklist_definition_id(checklist_definition_id)
    @checklist_b =  ChecklistCategoryItem.find(:all, :conditions => "item_head <> 'none'")
    @checklist_data = ChecklistCategoryItem.find_all_by_checklist_definition_id(checklist_definition_id)

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @checklist_properties }
      format.json { render json: @checklist }
      format.json { render json: @checklist_categories }
      format.json { render json: @checklist_b }
      format.json { render json: @checklist_definition }
      format.json { render json: @checklist_data }
    end
  end

  # POST /checklist_properties
  # POST /checklist_properties.json
  def create
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # PUT /checklist_properties/1
  # PUT /checklist_properties/1.json
  def update
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # DELETE /checklist_properties/1
  # DELETE /checklist_properties/1.json
  def destroy
    @checklist_property = ChecklistProperty.find(params[:id])

    respond_to do |format|
      format.html { redirect_to checklist_url }
      format.json { head :no_content }
    end
  end

  def updateform
    @checklist_items = ChecklistCategoryItem.find_all_by_checklist_definition_id(params[:checklist_definition_id])
    type = ChecklistDefinition.find(params[:checklist_definition_id]).checktype

    @b = ChecklistProperty.find(params[:checklist_property_id])
    @b.ausgefullt_von = params[:ausgefullt_von]
    @b.adresse_unternehmen = params[:adresse_unternehmen]
    @b.branche_unternehmen = params[:branche_unternehmen]
    @b.checklist_definition_id = params[:checklist_definition_id]
    @b.email_kontaktpersonenergie = params[:email_kontaktpersonenergie]
    @b.name_kontaktpersonenergie = params[:name_kontaktpersonenergie]
    @b.name_unternehmen = params[:name_unternehmen]
    @b.notizen = params[:notizen]
    @b.positionimunternehmen_kontaktpersonenergie = params[:positionimunternehmen_kontaktpersonenergie]
    @b.telefonnummer_kontaktpersonenergie = params[:telefonnummer_kontaktpersonenergie]
    @b.telefonnummer_unternehmen = params[:telefonnummer_unternehmen]

    if @b.save
      @items = Checklist.find_all_by_checklist_property_id(params[:checklist_property_id])
      if (type=='Ja und Nein')
        @items.each do |i|
          i.boolean_value = params[:"item_#{i.checklist_category_item_id}"]
          i.string_value = ''
          i.save
        end
      elsif (type=='Opt')
        @items.each do |i|
          i.boolean_value = params[:"item_#{i.checklist_category_item_id}"]
          i.string_value = params[:"citem_#{i.checklist_category_item_id}"]
          i.save
        end
      else
        @items.each do |i|
          i.string_value = params[:"item_#{i.checklist_category_item_id}"]
          i.save
        end
      end
      respond_to do |format|
        format.html { redirect_to controller: "sites", action: "checklists_manager" }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to controller: "sites", action: "checklists_manager" }
        format.json { head :no_content }
      end
    end
  end
end
