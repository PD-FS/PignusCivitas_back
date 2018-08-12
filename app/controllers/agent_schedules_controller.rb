class AgentSchedulesController < ApplicationController
  before_action :set_agent_schedule, only: [:show, :edit, :update, :destroy]

  # GET /agent_schedules
  # GET /agent_schedules.json
  def index
    @agent_schedules = AgentSchedule.all
  end

  # GET /agent_schedules/1
  # GET /agent_schedules/1.json
  def show
  end

  # GET /agent_schedules/new
  def new
    @agent_schedule = AgentSchedule.new
  end

  # GET /agent_schedules/1/edit
  def edit
  end

  # POST /agent_schedules
  # POST /agent_schedules.json
  def create
    @agent_schedule = AgentSchedule.new(agent_schedule_params)

    respond_to do |format|
      if @agent_schedule.save
        format.html { redirect_to @agent_schedule, notice: 'Agent schedule was successfully created.' }
        format.json { render :show, status: :created, location: @agent_schedule }
      else
        format.html { render :new }
        format.json { render json: @agent_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agent_schedules/1
  # PATCH/PUT /agent_schedules/1.json
  def update
    respond_to do |format|
      if @agent_schedule.update(agent_schedule_params)
        format.html { redirect_to @agent_schedule, notice: 'Agent schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent_schedule }
      else
        format.html { render :edit }
        format.json { render json: @agent_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent_schedules/1
  # DELETE /agent_schedules/1.json
  def destroy
    @agent_schedule.destroy
    respond_to do |format|
      format.html { redirect_to agent_schedules_url, notice: 'Agent schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent_schedule
      @agent_schedule = AgentSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_schedule_params
      params.require(:agent_schedule).permit(:schedule_id, :security_agent_id, :contract_id)
    end
end
