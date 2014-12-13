class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_same_user, only: [:edit, :update, :destroy]
  before_action :check_has_company, except: [:index, :show]
  before_filter :require_user, except: [:index, :show]

  respond_to :html

  def index
    @jobs = Job.all
    respond_with(@jobs)
  end

  def show
    respond_with(@job)
  end

  def new
    @job = Job.new
    respond_with(@job)
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    @job.organizationname = current_user.company.name
    @job.branch = current_user.company.branch
    @job.address = current_user.company.address
    @job.phone = current_user.company.phone
    @job.save
    respond_with(@job)
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:user_id, {:sex_ids => []}, {:disability_ids => []}, {:welfare_ids => []}, :organizationname, :branch, :address, :province_id, :education, :age, :position, :info, :jobtype_id, :wage, :document, :apply, :phone, :amount)
    end

    def require_user
      unless current_user.role_id == 1
        flash[:alert] = "คุณไม่มีสิทธิ์ประกาศงานได้"
        redirect_to "/" and return
      end
    end

    def check_same_user
      unless current_user.id == @job.user_id
        flash[:alert] = "ไม่สามารถแก้ไขประกาศงานที่ไม่ใช่ของคุณได้"
        redirect_to "/" and return
      end
    end

    def check_has_company
      unless current_user.company != nil
        flash[:alert] = "กรุณากรอกข้อมูลบริษัทก่อนประกาศงาน"
        redirect_to "/" and return
      end
    end

end
