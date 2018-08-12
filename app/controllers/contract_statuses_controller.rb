class ContractStatusesController < ApplicationController
  before_action :set_contract_status, only: [:show, :edit, :update, :destroy]

  # GET /contract_statuses
  # GET /contract_statuses.json
  def index
    @contract_statuses = ContractStatus.all
  end

  # GET /contract_statuses/1
  # GET /contract_statuses/1.json
  def show
  end

  # GET /contract_statuses/new
  def new
    @contract_status = ContractStatus.new
  end

  # GET /contract_statuses/1/edit
  def edit
  end

  # POST /contract_statuses
  # POST /contract_statuses.json
  def create
    @contract_status = ContractStatus.new(contract_status_params)

    respond_to do |format|
      if @contract_status.save
        format.html { redirect_to @contract_status, notice: 'Contract status was successfully created.' }
        format.json { render :show, status: :created, location: @contract_status }
      else
        format.html { render :new }
        format.json { render json: @contract_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_statuses/1
  # PATCH/PUT /contract_statuses/1.json
  def update
    respond_to do |format|
      if @contract_status.update(contract_status_params)
        format.html { redirect_to @contract_status, notice: 'Contract status was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_status }
      else
        format.html { render :edit }
        format.json { render json: @contract_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_statuses/1
  # DELETE /contract_statuses/1.json
  def destroy
    @contract_status.destroy
    respond_to do |format|
      format.html { redirect_to contract_statuses_url, notice: 'Contract status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_status
      @contract_status = ContractStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_status_params
      params.require(:contract_status).permit(:name, :description)
    end
end
