class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_same_user, only: [:edit, :update, :destroy]
  before_action :check_has_company, except: [:index, :show, :send_job_mail]
  before_filter :require_user, except: [:index, :show, :send_job_mail]

  respond_to :html, :json

  def index
    @jobs = Job.where(nil).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    @jobs = @jobs.jobtype(params[:jobtype]).order("created_at DESC").paginate(:page => params[:page], :per_page => 5) if params[:jobtype].present?
    @jobs = @jobs.province(params[:province]).order("created_at DESC").paginate(:page => params[:page], :per_page => 5) if params[:province].present?
    @search_jobtype = params[:jobtype]
    @search_provice = params[:province]
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
    
    if @job.save
      @job.resumes.uniq.each do |resume|
        NotificationMailer.job_post_notification(resume.user, @job).deliver
      end
      respond_with(@job)
    end
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  def send_job_mail
    unless current_user.resume != nil
      flash[:notice] = "กรุณากรอกแฟ้มประวัติก่อนทำการสมัครงาน"
      redirect_to "/" and return
    else
      resume = current_user.resume
      email = params[:email]
      jobposition = params[:jobposition]
      joborganization = params[:joborganization]
      NotificationMailer.job_send_notification(resume, email, jobposition, joborganization).deliver
      flash[:notice] = "ส่งอีเมล์สมัครงานเรียบร้อยแล้ว"
    end
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:user_id, {:sex_ids => []}, {:disability_ids => []}, {:welfare_ids => []}, :organizationname, :branch, :address, :province_id, :education, :age, :position, :info, :jobtype_id, :wage, :document, :apply, :phone, :amount, :agefrom, :ageto, :wagefrom, :wageto, {:document_ids => []}, {:toapply_ids => []})
    end

    def require_user
      unless current_user.role_id == 1 or current_user.role_id == 3
        flash[:alert] = "คุณไม่มีสิทธิ์ประกาศงานได้"
        redirect_to "/" and return
      end
    end

    def check_same_user
      unless current_user.id == @job.user_id or current_user.role_id == 3
        flash[:alert] = "ไม่สามารถแก้ไขประกาศงานที่ไม่ใช่ของคุณได้"
        redirect_to "/" and return
      end
    end

    def check_has_company
      unless current_user.company != nil or current_user.role_id == 3
        flash[:alert] = "กรุณากรอกข้อมูลบริษัทก่อนประกาศงาน"
        redirect_to "/" and return
      end
    end

end
