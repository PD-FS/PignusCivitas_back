class AssetStocksController < ApplicationController
  before_action :set_asset_stock, only: [:show, :edit, :update, :destroy]

  # GET /asset_stocks
  # GET /asset_stocks.json
  def index
    @asset_stocks = AssetStock.all
  end

  # GET /asset_stocks/1
  # GET /asset_stocks/1.json
  def show
  end

  # GET /asset_stocks/new
  def new
    @asset_stock = AssetStock.new
  end

  # GET /asset_stocks/1/edit
  def edit
  end

  # POST /asset_stocks
  # POST /asset_stocks.json
  def create
    @asset_stock = AssetStock.new(asset_stock_params)

    respond_to do |format|
      if @asset_stock.save
        format.html { redirect_to @asset_stock, notice: 'Asset stock was successfully created.' }
        format.json { render :show, status: :created, location: @asset_stock }
      else
        format.html { render :new }
        format.json { render json: @asset_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asset_stocks/1
  # PATCH/PUT /asset_stocks/1.json
  def update
    respond_to do |format|
      if @asset_stock.update(asset_stock_params)
        format.html { redirect_to @asset_stock, notice: 'Asset stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_stock }
      else
        format.html { render :edit }
        format.json { render json: @asset_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_stocks/1
  # DELETE /asset_stocks/1.json
  def destroy
    @asset_stock.destroy
    respond_to do |format|
      format.html { redirect_to asset_stocks_url, notice: 'Asset stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_stock
      @asset_stock = AssetStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_stock_params
      params.require(:asset_stock).permit(:stock_name, :manager, :last_update, :asset_stock_status_id, :asset_id, :community_id)
    end
end
