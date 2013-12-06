class EnergyGoalsController < ApplicationController

  ENERGY_GOALS_COUNT = 3

  # GET /energy_goals
  # GET /energy_goals.json
  def index
    @energy_goals = EnergyGoal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @energy_goals }
    end
  end

  # GET /energy_goals/1
  # GET /energy_goals/1.json
  def show
    @energy_goal = EnergyGoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @energy_goal }
    end
  end

  # GET /energy_goals/new
  # GET /energy_goals/new.json
  def new
    @energy_goal = EnergyGoal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @energy_goal }
    end
  end

  # GET /energy_goals/1/edit
  def edit
    @energy_goal = EnergyGoal.find(params[:id])
  end

  # POST /energy_goals
  # POST /energy_goals.json
  def create
    @energy_goal = EnergyGoal.new(params[:energy_goal])

    respond_to do |format|
      if @energy_goal.save
        format.html { redirect_to welcome_index_url, notice: 'Energieeffizienzziel erfolgreich angelegt.' }
        format.json { render json: @energy_goal, status: :created, location: @energy_goal }
      else
        format.html { render action: "new" }
        format.json { render json: @energy_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /energy_goals/1
  # PUT /energy_goals/1.json
  def update
    @energy_goal = EnergyGoal.find(params[:id])

    respond_to do |format|
      if @energy_goal.update_attributes(params[:energy_goal])
        format.html { redirect_to welcome_index_url, notice: 'Energieeffizienzziel erfolgreich aktualisiert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @energy_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energy_goals/1
  # DELETE /energy_goals/1.json
  def destroy
    @energy_goal = EnergyGoal.find(params[:id])
    @energy_goal.destroy

    respond_to do |format|
      format.html { redirect_to welcome_index_url }
      format.json { head :no_content }
    end
  end
end
