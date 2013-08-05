class ChecklistsController < ApplicationController
  # GET /checklists
  # GET /checklists.json
  def index
    @checklist_properties = ChecklistProperty.all
    @checklists = Checklist.all
    @checklist_definition = ChecklistDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checklist_properties }
      format.json { render json: @checklists }
      format.json { render json: @checklist_definition }
    end
  end

  # GET /checklists/1
  # GET /checklists/1.json
  def show
    @checklist_property = ChecklistProperty.find(params[:id])
    checklist_property_id = @checklist_property.id
    checklist_definition_id = @checklist_property.checklist_definition_id
    @checklist = Checklist.find_all_by_checklist_property_id(checklist_property_id)
    @checklist_name = ChecklistDefinition.find(checklist_definition_id)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checklist_properties }
      format.json { render json: @checklist }
      format.json { render json: @checklist_name }
    end
  end

  # GET /checklists/new
  # GET /checklists/new.json
  def new
    @checklist_data = ChecklistCategoryItem.find_all_by_checklist_definition_id(ChecklistDefinition.find(params[:id]))
    @checklist_categories = ChecklistCategory.find_all_by_checklist_definition_id(ChecklistDefinition.find(params[:id]))
    @checklist_b =  ChecklistCategoryItem.find(:all, :conditions => "item_head <> 'none'")
    @checklist_definition = ChecklistDefinition.find(params[:id])
    # @checklist = Checklist.new
    # @checklist_property = ChecklistProperty.new

    respond_to do |format|
      format.html # new.html.erb
                  # format.json { render json: @checklist }
                  # format.json { render json: @checklist_property }
      format.json { render json: @checklist_data }
      format.json { render json: @checklist_categories }
      format.json { render json: @checklist_b }
      format.json { render json: @checklist_definition }
    end
  end

  # GET /checklists/1/edit
  def edit
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # POST /checklists
  # POST /checklists.json
  def create
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # PUT /checklists/1
  # PUT /checklists/1.json
  def update
    respond_to do |format|
      format.html { redirect_to controller: "sites", action: "checklists_manager" }
      format.json { head :no_content }
    end
  end

  # DELETE /checklists/1
  # DELETE /checklists/1.json
  def destroy
    @checklist_property = ChecklistProperty.find(params[:id])
    @checklist_property.destroy

    respond_to do |format|
      format.html { redirect_to checklists_url }
      format.json { head :no_content }
    end
  end


  def saveform
    @checklist_items = ChecklistCategoryItem.find_all_by_checklist_definition_id(params[:checklist_definition_id])
    type = ChecklistDefinition.find(params[:checklist_definition_id]).checktype

    @b = ChecklistProperty.new
    @b.adresse_unternehmen = params[:adresse_unternehmen]
    @b.ausgefullt_von = params[:ausgefullt_von]
    @b.branche_unternehmen = params[:branche_unternehmen]
    @b.checklist_definition_id = params[:checklist_definition_id]
    @b.datum = params[:datum]
    @b.email_kontaktpersonenergie = params[:email_kontaktpersonenergie]
    @b.name_kontaktpersonenergie = params[:name_kontaktpersonenergie]
    @b.name_unternehmen = params[:name_unternehmen]
    @b.notizen = params[:notizen]
    @b.positionimunternehmen_kontaktpersonenergie = params[:positionimunternehmen_kontaktpersonenergie]
    @b.telefonnummer_kontaktpersonenergie = params[:telefonnummer_kontaktpersonenergie]
    @b.telefonnummer_unternehmen = params[:telefonnummer_unternehmen]

    if @b.save
        if (type=='Ja und Nein')
          @checklist_items.each do |i|
            @c =Checklist.new
            @c.boolean_value = params[:"item_#{i.id}"]
            @c.string_value = ''
            @c.checklist_category_item_id = i.id
            @c.checklist_property_id = @b.id
            @c.save
          end
        elsif (type=='Opt')
          @checklist_items.each do |i|
            @c =Checklist.new
            @c.boolean_value = params[:"item_#{i.id}"]
            @c.string_value = params[:"citem_#{i.id}"]
            @c.checklist_category_item_id = i.id
            @c.checklist_property_id = @b.id
            @c.save
          end
        else
          @checklist_items.each do |i|
            @c =Checklist.new
            @c.string_value = params[:"item_#{i.id}"]
            @c.checklist_category_item_id = i.id
            @c.checklist_property_id = @b.id
            @c.save
          end
        end
        respond_to do |format|
          format.html { redirect_to controller: "sites", action: "checklists_manager" }
          format.json { head :no_content }
        end
    else
      respond_to do |format|
        format.html { redirect_to controller: "sites", action: "checklists_manager" }
        format.json { render json: @checklist_items.errors, status: :unprocessable_entity }
      end

    end
  end
end