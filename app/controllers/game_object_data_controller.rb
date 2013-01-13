class GameObjectDataController < ApplicationController
  # GET /game_object_data
  # GET /game_object_data.json
  def index
    @game_object_data = GameObjectDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_object_data }
    end
  end

  # GET /game_object_data/1
  # GET /game_object_data/1.json
  def show
    @game_object_datum = GameObjectDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_object_datum }
    end
  end

  # GET /game_object_data/new
  # GET /game_object_data/new.json
  def new
    @game_object_datum = GameObjectDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_object_datum }
    end
  end

  # GET /game_object_data/1/edit
  def edit
    @game_object_datum = GameObjectDatum.find(params[:id])
  end

  # POST /game_object_data
  # POST /game_object_data.json
  def create
    @game_object_datum = GameObjectDatum.new(params[:game_object_datum])

    respond_to do |format|
      if @game_object_datum.save
        format.html { redirect_to @game_object_datum, notice: 'Game object datum was successfully created.' }
        format.json { render json: @game_object_datum, status: :created, location: @game_object_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @game_object_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_object_data/1
  # PUT /game_object_data/1.json
  def update
    @game_object_datum = GameObjectDatum.find(params[:id])

    respond_to do |format|
      if @game_object_datum.update_attributes(params[:game_object_datum])
        format.html { redirect_to @game_object_datum, notice: 'Game object datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_object_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_object_data/1
  # DELETE /game_object_data/1.json
  def destroy
    @game_object_datum = GameObjectDatum.find(params[:id])
    @game_object_datum.destroy

    respond_to do |format|
      format.html { redirect_to game_object_data_url }
      format.json { head :no_content }
    end
  end
end
