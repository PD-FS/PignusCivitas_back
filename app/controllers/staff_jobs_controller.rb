class StaffJobsController < ApplicationController
  before_action :set_staff_job, only: [:show, :edit, :update, :destroy]

  # GET /staff_jobs
  # GET /staff_jobs.json
  def index
    @staff_jobs = StaffJob.all
  end

  # GET /staff_jobs/1
  # GET /staff_jobs/1.json
  def show
  end

  # GET /staff_jobs/new
  def new
    @staff_job = StaffJob.new
  end

  # GET /staff_jobs/1/edit
  def edit
  end

  # POST /staff_jobs
  # POST /staff_jobs.json
  def create
    @staff_job = StaffJob.new(staff_job_params)

    respond_to do |format|
      if @staff_job.save
        format.html { redirect_to @staff_job, notice: 'Staff job was successfully created.' }
        format.json { render :show, status: :created, location: @staff_job }
      else
        format.html { render :new }
        format.json { render json: @staff_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_jobs/1
  # PATCH/PUT /staff_jobs/1.json
  def update
    respond_to do |format|
      if @staff_job.update(staff_job_params)
        format.html { redirect_to @staff_job, notice: 'Staff job was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_job }
      else
        format.html { render :edit }
        format.json { render json: @staff_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_jobs/1
  # DELETE /staff_jobs/1.json
  def destroy
    @staff_job.destroy
    respond_to do |format|
      format.html { redirect_to staff_jobs_url, notice: 'Staff job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_job
      @staff_job = StaffJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_job_params
      params.require(:staff_job).permit(:name, :description)
    end
end
