class MemberTypeMembersController < ApplicationController
  before_action :set_member_type_member, only: [:show, :edit, :update, :destroy]

  # GET /member_type_members
  # GET /member_type_members.json
  def index
    @member_type_members = MemberTypeMember.all
  end

  # GET /member_type_members/1
  # GET /member_type_members/1.json
  def show
  end

  # GET /member_type_members/new
  def new
    @member_type_member = MemberTypeMember.new
  end

  # GET /member_type_members/1/edit
  def edit
  end

  # POST /member_type_members
  # POST /member_type_members.json
  def create
    @member_type_member = MemberTypeMember.new(member_type_member_params)

    respond_to do |format|
      if @member_type_member.save
        format.html { redirect_to @member_type_member, notice: 'Member type member was successfully created.' }
        format.json { render :show, status: :created, location: @member_type_member }
      else
        format.html { render :new }
        format.json { render json: @member_type_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_type_members/1
  # PATCH/PUT /member_type_members/1.json
  def update
    respond_to do |format|
      if @member_type_member.update(member_type_member_params)
        format.html { redirect_to @member_type_member, notice: 'Member type member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_type_member }
      else
        format.html { render :edit }
        format.json { render json: @member_type_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_type_members/1
  # DELETE /member_type_members/1.json
  def destroy
    @member_type_member.destroy
    respond_to do |format|
      format.html { redirect_to member_type_members_url, notice: 'Member type member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_type_member
      @member_type_member = MemberTypeMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_type_member_params
      params.require(:member_type_member).permit(:member_id, :member_type_id)
    end
end
