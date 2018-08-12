class AgentTypesController < ApplicationController
  before_action :set_agent_type, only: [:show, :edit, :update, :destroy]

  # GET /agent_types
  # GET /agent_types.json
  def index
    @agent_types = AgentType.all
  end

  # GET /agent_types/1
  # GET /agent_types/1.json
  def show
  end

  # GET /agent_types/new
  def new
    @agent_type = AgentType.new
  end

  # GET /agent_types/1/edit
  def edit
  end

  # POST /agent_types
  # POST /agent_types.json
  def create
    @agent_type = AgentType.new(agent_type_params)

    respond_to do |format|
      if @agent_type.save
        format.html { redirect_to @agent_type, notice: 'Agent type was successfully created.' }
        format.json { render :show, status: :created, location: @agent_type }
      else
        format.html { render :new }
        format.json { render json: @agent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agent_types/1
  # PATCH/PUT /agent_types/1.json
  def update
    respond_to do |format|
      if @agent_type.update(agent_type_params)
        format.html { redirect_to @agent_type, notice: 'Agent type was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent_type }
      else
        format.html { render :edit }
        format.json { render json: @agent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_types/1
  # DELETE /agent_types/1.json
  def destroy
    @agent_type.destroy
    respond_to do |format|
      format.html { redirect_to agent_types_url, notice: 'Agent type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent_type
      @agent_type = AgentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_type_params
      params.require(:agent_type).permit(:name, :type)
    end
end
