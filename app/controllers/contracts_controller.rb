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
