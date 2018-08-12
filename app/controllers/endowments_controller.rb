class EndowmentsController < ApplicationController
  before_action :set_endowment, only: [:show, :edit, :update, :destroy]

  # GET /endowments
  # GET /endowments.json
  def index
    @endowments = Endowment.all
  end

  # GET /endowments/1
  # GET /endowments/1.json
  def show
  end

  # GET /endowments/new
  def new
    @endowment = Endowment.new
  end

  # GET /endowments/1/edit
  def edit
  end

  # POST /endowments
  # POST /endowments.json
  def create
    @endowment = Endowment.new(endowment_params)

    respond_to do |format|
      if @endowment.save
        format.html { redirect_to @endowment, notice: 'Endowment was successfully created.' }
        format.json { render :show, status: :created, location: @endowment }
      else
        format.html { render :new }
        format.json { render json: @endowment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endowments/1
  # PATCH/PUT /endowments/1.json
  def update
    respond_to do |format|
      if @endowment.update(endowment_params)
        format.html { redirect_to @endowment, notice: 'Endowment was successfully updated.' }
        format.json { render :show, status: :ok, location: @endowment }
      else
        format.html { render :edit }
        format.json { render json: @endowment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endowments/1
  # DELETE /endowments/1.json
  def destroy
    @endowment.destroy
    respond_to do |format|
      format.html { redirect_to endowments_url, notice: 'Endowment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endowment
      @endowment = Endowment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endowment_params
      params.require(:endowment).permit(:stock_name, :date, :accountable, :endowment_status_id, :contract_id)
    end
end
