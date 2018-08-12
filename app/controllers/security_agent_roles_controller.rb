class SecurityAgentRolesController < ApplicationController
  before_action :set_security_agent_role, only: [:show, :edit, :update, :destroy]

  # GET /security_agent_roles
  # GET /security_agent_roles.json
  def index
    @security_agent_roles = SecurityAgentRole.all
  end

  # GET /security_agent_roles/1
  # GET /security_agent_roles/1.json
  def show
  end

  # GET /security_agent_roles/new
  def new
    @security_agent_role = SecurityAgentRole.new
  end

  # GET /security_agent_roles/1/edit
  def edit
  end

  # POST /security_agent_roles
  # POST /security_agent_roles.json
  def create
    @security_agent_role = SecurityAgentRole.new(security_agent_role_params)

    respond_to do |format|
      if @security_agent_role.save
        format.html { redirect_to @security_agent_role, notice: 'Security agent role was successfully created.' }
        format.json { render :show, status: :created, location: @security_agent_role }
      else
        format.html { render :new }
        format.json { render json: @security_agent_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_agent_roles/1
  # PATCH/PUT /security_agent_roles/1.json
  def update
    respond_to do |format|
      if @security_agent_role.update(security_agent_role_params)
        format.html { redirect_to @security_agent_role, notice: 'Security agent role was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_agent_role }
      else
        format.html { render :edit }
        format.json { render json: @security_agent_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_agent_roles/1
  # DELETE /security_agent_roles/1.json
  def destroy
    @security_agent_role.destroy
    respond_to do |format|
      format.html { redirect_to security_agent_roles_url, notice: 'Security agent role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_agent_role
      @security_agent_role = SecurityAgentRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def security_agent_role_params
      params.require(:security_agent_role).permit(:name, :description)
    end
end
