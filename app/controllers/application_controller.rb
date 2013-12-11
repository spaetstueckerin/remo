class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :getCheckListProgress, :getEnergyGoalSmallChartOpts, :getEnergyGoalChartOpts, :getEnergyGoalDataTable, :updateEnergyGoals

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  
  def user_signed_in?
    current_user.present?
  end
  
  def role?
    current_user.role_id?
  end
  
  def require_login
    unless user_signed_in?
      redirect_to login_path, alert: "Bitte melden Sie sich an!"
    end
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Kein Zugriff!"
    redirect_to "/welcome/index"
  end

  def getCheckListProgress(checklist_property)
    count = percent = 0
    checklistDefinition = ChecklistDefinition.find(checklist_property.checklist_definition_id)
    if checklistDefinition.checktype == "Ja und Nein"
      checkListArr = Checklist.find_all_by_checklist_property_id(checklist_property.id)
      total = checkListArr.count
      checkListArr.each do |item|
        if (item.boolean_value == true)
          count += 1
        end
      end
      percent = (count.to_f / total.to_f) * 100.0
    end
    return percent.to_i
  end

  def getEnergyGoalSmallChartOpts(energy_goal)
    if (energy_goal.goal_id == EnergyGoalType::DECREASE)
      color = (energy_goal.last_value > energy_goal.mean_value) ? 'red' : 'green'
    else
      color = (energy_goal.last_value < energy_goal.mean_value) ? 'red' : 'green'
    end
    return {:width => 100, :height => 50, :title => 'Verbrauch/Kosten Verlauf', :legend => 'bottom',
            # chartArea: {left: 25, top: 10, width: "75%", height: "75%"},
            :colors => ['navy', 'blue', 'aqua', color],
            :backgroundColor => '#F1F2EB'}
  end

  def getEnergyGoalChartOpts(energy_goal)
    if (energy_goal.goal_id == EnergyGoalType::DECREASE)
      color = (energy_goal.last_value > energy_goal.mean_value) ? 'red' : 'green'
    else
      color = (energy_goal.last_value < energy_goal.mean_value) ? 'red' : 'green'
    end
    return {:width => 600, :height => 300, :title => 'Verbrauch/Kosten Verlauf',
            chartArea: {left: 50, top: 50, width: "70%", height: "70%"},
            :colors => ['navy', 'blue', 'aqua', color],
            :backgroundColor => '#F1F2EB'}
  end

  def getEnergyGoalDataTable(energy_goal)
    hAxisTitle = EnergyType.find(energy_goal.energy_type_id).energy_type + EnergyGoalConcept.find(energy_goal.concept_id).energy_goal_concept
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', hAxisTitle)
    data_table.new_column('number', 'Ausgangswert')
    data_table.new_column('number', 'Mittelwert')
    data_table.new_column('number', 'Zielwert')
    data_table.new_column('number', 'Letzter Wert')
    data_table.add_row([hAxisTitle, energy_goal.from_value, energy_goal.mean_value, energy_goal.to_value, energy_goal.last_value])
    return data_table
  end

  def updateEnergyGoals(bill)
    # Find all active energy goals related to this bill
    energy_goals = EnergyGoal.find_all_by_status_and_energy_type_id(true, Contract.find(bill.contract_id).energy_type_id)
    energy_goals.each do |e|
      if (bill.period_to >= e.from_date)
        if (e.from_value == 0 && e.to_value == 0) # if this is the first bill related to the energy goal, initialize it
          initializeEnergyGoal(e, bill)
        else # update energy goal
          e.last_value = (e.concept_id == EnergyGoalConcept::CONSUMPTION) ? bill.consumption : bill.value
          contracts = Contract.find_all_by_energy_type_id(e.energy_type_id)
          n = Bill.where('period_to > ?', e.from_date).find_all_by_contract_id(contracts).count
          e.mean_value = ((n-1) * e.mean_value + e.last_value) / n
        end
      end
      if (bill.period_to >= e.to_date)
        e.status = false # mark the energy goal as closed
      end
      e.save
    end
  end

  def initializeEnergyGoal(goal, bill)
    goal.from_value = goal.mean_value = goal.last_value = (goal.concept_id == EnergyGoalConcept::CONSUMPTION) ? bill.consumption : bill.value
    goal.to_value = (goal.measure_id == EnergyGoalMeasure::PERCENT) ? goal.from_value - (goal.from_value * goal.value) / 100.0 : goal.from_value - goal.value
  end
end
