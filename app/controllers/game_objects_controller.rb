class GameObjectsController < ApplicationController
  # GET /game_objects
  # GET /game_objects.json
  def index
    @game_objects = GameObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_objects }
    end
  end

  # GET /game_objects/1
  # GET /game_objects/1.json
  def show
    @game_object = GameObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_object }
    end
  end

  # GET /game_objects/new
  # GET /game_objects/new.json
  def new
    @game_object = GameObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_object }
    end
  end

  # GET /game_objects/1/edit
  def edit
    @game_object = GameObject.find(params[:id])
  end

  # POST /game_objects
  # POST /game_objects.json
  def create
    @game_object = GameObject.new(params[:game_object])

    respond_to do |format|
      if @game_object.save
        format.html { redirect_to @game_object, notice: 'Game object was successfully created.' }
        format.json { render json: @game_object, status: :created, location: @game_object }
      else
        format.html { render action: "new" }
        format.json { render json: @game_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_objects/1
  # PUT /game_objects/1.json
  def update
    @game_object = GameObject.find(params[:id])

    respond_to do |format|
      if @game_object.update_attributes(params[:game_object])
        format.html { redirect_to @game_object, notice: 'Game object was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_objects/1
  # DELETE /game_objects/1.json
  def destroy
    @game_object = GameObject.find(params[:id])
    @game_object.destroy

    respond_to do |format|
      format.html { redirect_to game_objects_url }
      format.json { head :no_content }
    end
  end
end
