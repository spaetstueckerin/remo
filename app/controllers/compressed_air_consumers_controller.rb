class CompressedAirConsumersController < ApplicationController
  # GET /compressed_air_consumers
  # GET /compressed_air_consumers.json
  def index
    @compressed_air_consumers = CompressedAirConsumer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compressed_air_consumers }
    end
  end

  # GET /compressed_air_consumers/1
  # GET /compressed_air_consumers/1.json
  def show
    @compressed_air_consumer = CompressedAirConsumer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compressed_air_consumer }
    end
  end

  # GET /compressed_air_consumers/new
  # GET /compressed_air_consumers/new.json
  def new
    @compressed_air_consumer = CompressedAirConsumer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compressed_air_consumer }
    end
  end

  # GET /compressed_air_consumers/1/edit
  def edit
    @compressed_air_consumer = CompressedAirConsumer.find(params[:id])
  end

  # POST /compressed_air_consumers
  # POST /compressed_air_consumers.json
  def create
    @compressed_air_consumer = CompressedAirConsumer.new(params[:compressed_air_consumer])

    respond_to do |format|
      if @compressed_air_consumer.save
        format.html { redirect_to @compressed_air_consumer, notice: 'Compressed air consumer was successfully created.' }
        format.json { render json: @compressed_air_consumer, status: :created, location: @compressed_air_consumer }
      else
        format.html { render action: "new" }
        format.json { render json: @compressed_air_consumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /compressed_air_consumers/1
  # PUT /compressed_air_consumers/1.json
  def update
    @compressed_air_consumer = CompressedAirConsumer.find(params[:id])

    respond_to do |format|
      if @compressed_air_consumer.update_attributes(params[:compressed_air_consumer])
        format.html { redirect_to @compressed_air_consumer, notice: 'Compressed air consumer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @compressed_air_consumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compressed_air_consumers/1
  # DELETE /compressed_air_consumers/1.json
  def destroy
    @compressed_air_consumer = CompressedAirConsumer.find(params[:id])
    @compressed_air_consumer.destroy

    respond_to do |format|
      format.html { redirect_to compressed_air_consumers_url }
      format.json { head :no_content }
    end
  end
end
