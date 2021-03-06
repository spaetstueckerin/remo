class BillsController < ApplicationController
  # GET /bills
  # GET /bills.json
    
  def index
    @bills = Bill.find(:all, :order => "date")
    
        data_table = GoogleVisualr::DataTable.new
        data_table.new_column('string', 'Zeit')
        data_table.new_column('number', 'Energiekosten in EUR')
        #data_table.new_column('number', 'Verbrauch')
        
        @bills.each do |data|
            #data_table.add_row(["#{data.date.strftime('%d.%m.%Y')}",data.value, data.consumption])
            data_table.add_row(["#{data.date.strftime('%d.%m.%Y')}",data.value])
        end

     opts = { :width => 800, :height => 250, :title => 'Energiekosten laut Abrechnung', :legend => 'bottom' }
    @chart = GoogleVisualr::Interactive::LineChart.new(data_table, opts)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bills }
    end
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    @bill = Bill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill }
    end
  end

  # GET /bills/new
  # GET /bills/new.json
  def new
    @bill = Bill.new
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @contracts = Contract.find_by_enterprise_id(@enterprise.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill }
    end
  end

  # GET /bills/1/edit
  def edit
    @bill = Bill.find(params[:id])
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @contracts = Contract.find_by_enterprise_id(@enterprise.id)
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = Bill.new(params[:bill])
    @user = User.find(session[:user_id])
    @enterprise = Enterprise.find(@user.enterprise_id)
    @contracts = Contract.find_by_enterprise_id(@enterprise.id)

    respond_to do |format|
      if @bill.save
        # Update all energy goals related to this bill
        updateEnergyGoals(@bill)
        format.html { redirect_to @contracts, notice: 'Bill was successfully created.' }
        format.json { render json: @bill, status: :created, location: @bill }
      else
        format.html { render action: "new" }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bills/1
  # PUT /bills/1.json
  def update
    @bill = Bill.find(params[:id])

    respond_to do |format|
      if @bill.update_attributes(params[:bill])
        # Update all energy goals related to this bill
        updateEnergyGoals(@bill)
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill = Bill.find(params[:id])
    # TODO: "un-updateEnergyGoals" related to this bill
    @bill.destroy

    respond_to do |format|
      format.html { redirect_to bills_url }
      format.json { head :no_content }
    end
  end
end
