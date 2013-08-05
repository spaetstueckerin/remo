class ContractsController < ApplicationController
  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
    @bills = Bill.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contracts }
    end
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    @contract = Contract.find(params[:id])
    @bills = Bill.find_all_by_contract_id(params[:id], :order => "date")
    
    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Zeit')
    data_table.new_column('number', 'Energiekosten in EUR')
    #data_table.new_column('number', 'Verbrauch')
    
    @bills.each do |data|
        #data_table.add_row(["#{data.date.strftime('%d.%m.%Y')}",data.value, data.consumption])
        data_table.add_row(["#{data.date.strftime('%d.%m.%Y')}",data.value])
    end

    opts = { :width => 800, :height => 300, :title => 'Energiekosten laut Abrechnung', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)
    
    #Energiemix Chart
    energy_mix = EnergyMix.find_by_id(1)
    data_table2 = GoogleVisualr::DataTable.new
    
    data_table2.new_column('string', 'Energieart')
    data_table2.new_column('number', 'Anteil')
    #data_table2.new_column('string', 'Erneuerbare Energien')
    #data_table2.new_column('string', 'Braunkohle')
    #data_table2.new_column('string', 'Steinkohle')
    #data_table2.new_column('string', 'Atomkraft')
    #data_table2.new_column('string', 'Erdgas')
    #data_table2.new_column('string', 'Erdoel')
    #data_table2.new_column('string', 'Andere')
    
    data_table2.add_row(["Erneuerbare Energien", energy_mix.renewableEEG])
    data_table2.add_row(["Braunkohle", energy_mix.brownCoal])
    data_table2.add_row(["Steinkohle", energy_mix.stoneCoal])
    data_table2.add_row(["Atomkraft", energy_mix.nuclear])
    data_table2.add_row(["Erdgas", energy_mix.naturalGas])
    data_table2.add_row(["Erdoel", energy_mix.mineralOil])
    data_table2.add_row(["Andere", energy_mix.other])
    
    opts2 = { :width => 800, :height => 300, :title => 'Energiemix laut Energielieferant', :legend => 'bottom' }
    @chart2 = GoogleVisualr::Interactive::PieChart.new(data_table2, opts2)                    
        
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract }
    end
  end

  # GET /contracts/new
  # GET /contracts/new.json
  def new
    @contract = Contract.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contract }
    end
  end

  # GET /contracts/1/edit
  def edit
    @contract = Contract.find(params[:id])
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(params[:contract])

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Vertrag wurde erfolgreich erstellt.' }
        format.json { render json: @contract, status: :created, location: @contract }
      else
        format.html { render action: "new" }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contracts/1
  # PUT /contracts/1.json
  def update
    @contract = Contract.find(params[:id])

    respond_to do |format|
      if @contract.update_attributes(params[:contract])
        format.html { redirect_to @contract, notice: 'Vertrag wurde erfolgreich bearbeitet.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy

    respond_to do |format|
      format.html { redirect_to contracts_url }
      format.json { head :no_content }
    end
  end
end
