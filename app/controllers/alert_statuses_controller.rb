class AlertStatusesController < ApplicationController
  before_action :set_alert_status, only: [:show, :edit, :update, :destroy]

  # GET /alert_statuses
  # GET /alert_statuses.json
  def index
    @alert_statuses = AlertStatus.all
  end

  # GET /alert_statuses/1
  # GET /alert_statuses/1.json
  def show
  end

  # GET /alert_statuses/new
  def new
    @alert_status = AlertStatus.new
  end

  # GET /alert_statuses/1/edit
  def edit
  end

  # POST /alert_statuses
  # POST /alert_statuses.json
  def create
    @alert_status = AlertStatus.new(alert_status_params)

    respond_to do |format|
      if @alert_status.save
        format.html { redirect_to @alert_status, notice: 'Alert status was successfully created.' }
        format.json { render :show, status: :created, location: @alert_status }
      else
        format.html { render :new }
        format.json { render json: @alert_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alert_statuses/1
  # PATCH/PUT /alert_statuses/1.json
  def update
    respond_to do |format|
      if @alert_status.update(alert_status_params)
        format.html { redirect_to @alert_status, notice: 'Alert status was successfully updated.' }
        format.json { render :show, status: :ok, location: @alert_status }
      else
        format.html { render :edit }
        format.json { render json: @alert_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_statuses/1
  # DELETE /alert_statuses/1.json
  def destroy
    @alert_status.destroy
    respond_to do |format|
      format.html { redirect_to alert_statuses_url, notice: 'Alert status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert_status
      @alert_status = AlertStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_status_params
      params.require(:alert_status).permit(:name, :description)
    end
end
