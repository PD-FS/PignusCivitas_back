class CommunityStaffsController < ApplicationController
  before_action :set_community_staff, only: [:show, :edit, :update, :destroy]

  # GET /community_staffs
  # GET /community_staffs.json
  def index
    @community_staffs = CommunityStaff.all
  end

  # GET /community_staffs/1
  # GET /community_staffs/1.json
  def show
  end

  # GET /community_staffs/new
  def new
    @community_staff = CommunityStaff.new
  end

  # GET /community_staffs/1/edit
  def edit
  end

  # POST /community_staffs
  # POST /community_staffs.json
  def create
    @community_staff = CommunityStaff.new(community_staff_params)

    respond_to do |format|
      if @community_staff.save
        format.html { redirect_to @community_staff, notice: 'Community staff was successfully created.' }
        format.json { render :show, status: :created, location: @community_staff }
      else
        format.html { render :new }
        format.json { render json: @community_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_staffs/1
  # PATCH/PUT /community_staffs/1.json
  def update
    respond_to do |format|
      if @community_staff.update(community_staff_params)
        format.html { redirect_to @community_staff, notice: 'Community staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_staff }
      else
        format.html { render :edit }
        format.json { render json: @community_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_staffs/1
  # DELETE /community_staffs/1.json
  def destroy
    @community_staff.destroy
    respond_to do |format|
      format.html { redirect_to community_staffs_url, notice: 'Community staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_staff
      @community_staff = CommunityStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_staff_params
      params.require(:community_staff).permit(:staff_id, :community_id)
    end
end
