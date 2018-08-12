class AssetStockStatusesController < ApplicationController
  before_action :set_asset_stock_status, only: [:show, :edit, :update, :destroy]

  # GET /asset_stock_statuses
  # GET /asset_stock_statuses.json
  def index
    @asset_stock_statuses = AssetStockStatus.all
  end

  # GET /asset_stock_statuses/1
  # GET /asset_stock_statuses/1.json
  def show
  end

  # GET /asset_stock_statuses/new
  def new
    @asset_stock_status = AssetStockStatus.new
  end

  # GET /asset_stock_statuses/1/edit
  def edit
  end

  # POST /asset_stock_statuses
  # POST /asset_stock_statuses.json
  def create
    @asset_stock_status = AssetStockStatus.new(asset_stock_status_params)

    respond_to do |format|
      if @asset_stock_status.save
        format.html { redirect_to @asset_stock_status, notice: 'Asset stock status was successfully created.' }
        format.json { render :show, status: :created, location: @asset_stock_status }
      else
        format.html { render :new }
        format.json { render json: @asset_stock_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asset_stock_statuses/1
  # PATCH/PUT /asset_stock_statuses/1.json
  def update
    respond_to do |format|
      if @asset_stock_status.update(asset_stock_status_params)
        format.html { redirect_to @asset_stock_status, notice: 'Asset stock status was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_stock_status }
      else
        format.html { render :edit }
        format.json { render json: @asset_stock_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_stock_statuses/1
  # DELETE /asset_stock_statuses/1.json
  def destroy
    @asset_stock_status.destroy
    respond_to do |format|
      format.html { redirect_to asset_stock_statuses_url, notice: 'Asset stock status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_stock_status
      @asset_stock_status = AssetStockStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_stock_status_params
      params.require(:asset_stock_status).permit(:name, :description)
    end
end
