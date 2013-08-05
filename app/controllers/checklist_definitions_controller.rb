class ChecklistDefinitionsController < ApplicationController
  # GET /checklist_definitions
  # GET /checklist_definitions.json
  def index
    @checklist_definitions = ChecklistDefinition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checklist_definitions }
    end
  end

  # GET /checklist_definitions/1
  # GET /checklist_definitions/1.json
  def show
    @checklist_definition = ChecklistDefinition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checklist_definition }
    end
  end

  # GET /checklist_definitions/new
  # GET /checklist_definitions/new.json
  def new
    @checklist_definition = ChecklistDefinition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checklist_definition }
    end
  end

  # GET /checklist_definitions/1/edit
  def edit
    @checklist_definition = ChecklistDefinition.find(params[:id])
  end

  # POST /checklist_definitions
  # POST /checklist_definitions.json
  def create
    @checklist_definition = ChecklistDefinition.new(params[:checklist_definition])

    respond_to do |format|
      if @checklist_definition.save
        format.html { redirect_to @checklist_definition, notice: 'Checklist definition was successfully created.' }
        format.json { render json: @checklist_definition, status: :created, location: @checklist_definition }
      else
        format.html { render action: "new" }
        format.json { render json: @checklist_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checklist_definitions/1
  # PUT /checklist_definitions/1.json
  def update
    @checklist_definition = ChecklistDefinition.find(params[:id])

    respond_to do |format|
      if @checklist_definition.update_attributes(params[:checklist_definition])
        format.html { redirect_to @checklist_definition, notice: 'Checklist definition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checklist_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklist_definitions/1
  # DELETE /checklist_definitions/1.json
  def destroy
    @checklist_definition = ChecklistDefinition.find(params[:id])
    @checklist_definition.destroy

    respond_to do |format|
      format.html { redirect_to checklist_definitions_url }
      format.json { head :no_content }
    end
  end
end
