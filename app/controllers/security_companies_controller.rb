class SecurityCompaniesController < ApplicationController
  before_action :set_security_company, only: [:show, :edit, :update, :destroy]

  # GET /security_companies
  # GET /security_companies.json
  def index
    @security_companies = SecurityCompany.all
  end

  # GET /security_companies/1
  # GET /security_companies/1.json
  def show
  end

  # GET /security_companies/new
  def new
    @security_company = SecurityCompany.new
  end

  # GET /security_companies/1/edit
  def edit
  end

  # POST /security_companies
  # POST /security_companies.json
  def create
    @security_company = SecurityCompany.new(security_company_params)

    respond_to do |format|
      if @security_company.save
        format.html { redirect_to @security_company, notice: 'Security company was successfully created.' }
        format.json { render :show, status: :created, location: @security_company }
      else
        format.html { render :new }
        format.json { render json: @security_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_companies/1
  # PATCH/PUT /security_companies/1.json
  def update
    respond_to do |format|
      if @security_company.update(security_company_params)
        format.html { redirect_to @security_company, notice: 'Security company was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_company }
      else
        format.html { render :edit }
        format.json { render json: @security_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_companies/1
  # DELETE /security_companies/1.json
  def destroy
    @security_company.destroy
    respond_to do |format|
      format.html { redirect_to security_companies_url, notice: 'Security company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_company
      @security_company = SecurityCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def security_company_params
      params.require(:security_company).permit(:business_name, :address, :phone, :email, :identification)
    end
end
