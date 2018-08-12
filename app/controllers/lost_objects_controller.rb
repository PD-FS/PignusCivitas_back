class LostObjectsController < ApplicationController
  before_action :set_lost_object, only: [:show, :edit, :update, :destroy]

  # GET /lost_objects
  # GET /lost_objects.json
  def index
    @lost_objects = LostObject.all
  end

  # GET /lost_objects/1
  # GET /lost_objects/1.json
  def show
  end

  # GET /lost_objects/new
  def new
    @lost_object = LostObject.new
  end

  # GET /lost_objects/1/edit
  def edit
  end

  # POST /lost_objects
  # POST /lost_objects.json
  def create
    @lost_object = LostObject.new(lost_object_params)

    respond_to do |format|
      if @lost_object.save
        format.html { redirect_to @lost_object, notice: 'Lost object was successfully created.' }
        format.json { render :show, status: :created, location: @lost_object }
      else
        format.html { render :new }
        format.json { render json: @lost_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lost_objects/1
  # PATCH/PUT /lost_objects/1.json
  def update
    respond_to do |format|
      if @lost_object.update(lost_object_params)
        format.html { redirect_to @lost_object, notice: 'Lost object was successfully updated.' }
        format.json { render :show, status: :ok, location: @lost_object }
      else
        format.html { render :edit }
        format.json { render json: @lost_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lost_objects/1
  # DELETE /lost_objects/1.json
  def destroy
    @lost_object.destroy
    respond_to do |format|
      format.html { redirect_to lost_objects_url, notice: 'Lost object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lost_object
      @lost_object = LostObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lost_object_params
      params.require(:lost_object).permit(:name, :date, :notes, :returned_to, :return_date, :phone, :community_id)
    end
end
