class BlackListStatusesController < ApplicationController
  before_action :set_black_list_status, only: [:show, :edit, :update, :destroy]

  # GET /black_list_statuses
  # GET /black_list_statuses.json
  def index
    @black_list_statuses = BlackListStatus.all
  end

  # GET /black_list_statuses/1
  # GET /black_list_statuses/1.json
  def show
  end

  # GET /black_list_statuses/new
  def new
    @black_list_status = BlackListStatus.new
  end

  # GET /black_list_statuses/1/edit
  def edit
  end

  # POST /black_list_statuses
  # POST /black_list_statuses.json
  def create
    @black_list_status = BlackListStatus.new(black_list_status_params)

    respond_to do |format|
      if @black_list_status.save
        format.html { redirect_to @black_list_status, notice: 'Black list status was successfully created.' }
        format.json { render :show, status: :created, location: @black_list_status }
      else
        format.html { render :new }
        format.json { render json: @black_list_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /black_list_statuses/1
  # PATCH/PUT /black_list_statuses/1.json
  def update
    respond_to do |format|
      if @black_list_status.update(black_list_status_params)
        format.html { redirect_to @black_list_status, notice: 'Black list status was successfully updated.' }
        format.json { render :show, status: :ok, location: @black_list_status }
      else
        format.html { render :edit }
        format.json { render json: @black_list_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /black_list_statuses/1
  # DELETE /black_list_statuses/1.json
  def destroy
    @black_list_status.destroy
    respond_to do |format|
      format.html { redirect_to black_list_statuses_url, notice: 'Black list status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_black_list_status
      @black_list_status = BlackListStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def black_list_status_params
      params.require(:black_list_status).permit(:name, :description)
    end
end
