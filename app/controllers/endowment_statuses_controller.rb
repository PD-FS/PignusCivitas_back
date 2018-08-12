class EndowmentStatusesController < ApplicationController
  before_action :set_endowment_status, only: [:show, :edit, :update, :destroy]

  # GET /endowment_statuses
  # GET /endowment_statuses.json
  def index
    @endowment_statuses = EndowmentStatus.all
  end

  # GET /endowment_statuses/1
  # GET /endowment_statuses/1.json
  def show
  end

  # GET /endowment_statuses/new
  def new
    @endowment_status = EndowmentStatus.new
  end

  # GET /endowment_statuses/1/edit
  def edit
  end

  # POST /endowment_statuses
  # POST /endowment_statuses.json
  def create
    @endowment_status = EndowmentStatus.new(endowment_status_params)

    respond_to do |format|
      if @endowment_status.save
        format.html { redirect_to @endowment_status, notice: 'Endowment status was successfully created.' }
        format.json { render :show, status: :created, location: @endowment_status }
      else
        format.html { render :new }
        format.json { render json: @endowment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /endowment_statuses/1
  # PATCH/PUT /endowment_statuses/1.json
  def update
    respond_to do |format|
      if @endowment_status.update(endowment_status_params)
        format.html { redirect_to @endowment_status, notice: 'Endowment status was successfully updated.' }
        format.json { render :show, status: :ok, location: @endowment_status }
      else
        format.html { render :edit }
        format.json { render json: @endowment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /endowment_statuses/1
  # DELETE /endowment_statuses/1.json
  def destroy
    @endowment_status.destroy
    respond_to do |format|
      format.html { redirect_to endowment_statuses_url, notice: 'Endowment status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endowment_status
      @endowment_status = EndowmentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endowment_status_params
      params.require(:endowment_status).permit(:name, :description)
    end
end
