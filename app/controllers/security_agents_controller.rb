class SecurityAgentsController < ApplicationController
  before_action :set_security_agent, only: [:show, :edit, :update, :destroy]

  # GET /security_agents
  # GET /security_agents.json
  def index
    @security_agents = SecurityAgent.all
  end

  # GET /security_agents/1
  # GET /security_agents/1.json
  def show
  end

  # GET /security_agents/new
  def new
    @security_agent = SecurityAgent.new
  end

  # GET /security_agents/1/edit
  def edit
  end

  # POST /security_agents
  # POST /security_agents.json
  def create
    @security_agent = SecurityAgent.new(security_agent_params)

    respond_to do |format|
      if @security_agent.save
        format.html { redirect_to @security_agent, notice: 'Security agent was successfully created.' }
        format.json { render :show, status: :created, location: @security_agent }
      else
        format.html { render :new }
        format.json { render json: @security_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_agents/1
  # PATCH/PUT /security_agents/1.json
  def update
    respond_to do |format|
      if @security_agent.update(security_agent_params)
        format.html { redirect_to @security_agent, notice: 'Security agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_agent }
      else
        format.html { render :edit }
        format.json { render json: @security_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_agents/1
  # DELETE /security_agents/1.json
  def destroy
    @security_agent.destroy
    respond_to do |format|
      format.html { redirect_to security_agents_url, notice: 'Security agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_agent
      @security_agent = SecurityAgent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def security_agent_params
      params.require(:security_agent).permit(:security_agent_role_id, :division, :admission_date, :security_company_id, :security_agent_id, :weapon_id, :agent_type_id, :schedule_id, :person_id)
    end
end
