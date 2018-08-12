class AlertCommunitiesController < ApplicationController
  before_action :set_alert_community, only: [:show, :edit, :update, :destroy]

  # GET /alert_communities
  # GET /alert_communities.json
  def index
    @alert_communities = AlertCommunity.all
  end

  # GET /alert_communities/1
  # GET /alert_communities/1.json
  def show
  end

  # GET /alert_communities/new
  def new
    @alert_community = AlertCommunity.new
  end

  # GET /alert_communities/1/edit
  def edit
  end

  # POST /alert_communities
  # POST /alert_communities.json
  def create
    @alert_community = AlertCommunity.new(alert_community_params)

    respond_to do |format|
      if @alert_community.save
        format.html { redirect_to @alert_community, notice: 'Alert community was successfully created.' }
        format.json { render :show, status: :created, location: @alert_community }
      else
        format.html { render :new }
        format.json { render json: @alert_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alert_communities/1
  # PATCH/PUT /alert_communities/1.json
  def update
    respond_to do |format|
      if @alert_community.update(alert_community_params)
        format.html { redirect_to @alert_community, notice: 'Alert community was successfully updated.' }
        format.json { render :show, status: :ok, location: @alert_community }
      else
        format.html { render :edit }
        format.json { render json: @alert_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alert_communities/1
  # DELETE /alert_communities/1.json
  def destroy
    @alert_community.destroy
    respond_to do |format|
      format.html { redirect_to alert_communities_url, notice: 'Alert community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert_community
      @alert_community = AlertCommunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alert_community_params
      params.require(:alert_community).permit(:alert_community_id, :community_id, :alert_id)
    end
end
