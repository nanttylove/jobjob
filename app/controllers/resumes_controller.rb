class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_has_resume, only: [:new, :create]
  before_action :check_same_user, only: [:edit, :update, :destroy]
  before_filter :require_user, only: [:edit, :new, :create, :update, :destroy]

  respond_to :html, :json

  def index
    @resumes = Resume.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    respond_with(@resumes)
  end

  def show
    respond_with(@resume)
  end

  def new
    @resume = Resume.new
    respond_with(@resume)
  end

  def edit
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user_id = current_user.id
    @resume.save
    respond_with(@resume)
    flash[:notice] = "บันทึกแฟ้มประวัติเรียบร้อยแล้ว"
  end

  def update
    @resume.update(resume_params)
    respond_with(@resume)
    flash[:notice] = "บันทึกแฟ้มประวัติเรียบร้อยแล้ว"
  end

  def destroy
    @resume.destroy
    respond_with(@resume)
  end

  private
    def set_resume
      @resume = Resume.find(params[:id])
    end

    def resume_params
      params.require(:resume).permit(:user_id, :sex_id, :fname, :lname, :religion, :originnationality, :nationality, :nationalid, :disablerid, :birthdate, {:disability_ids => []}, :phone, :address, :education, :training, :contactperson)
    end

    def require_user
      unless current_user.role_id == 2 or current_user.role_id == 3
        flash[:alert] = "คุณไม่มีสิทธ์สร้างแฟ้มประวัติ"
        redirect_to "/" and return
      end
    end

    def check_has_resume
      unless current_user.resume == nil or current_user.role_id == 3
        flash[:alert] = "สามารถสร้างแฟ้มประวัติได้ 1 แฟ้มเท่านั้น"
        redirect_to "/" and return
      end
    end

    def check_same_user
      unless current_user.id == @resume.user_id or current_user.role_id == 3
        flash[:alert] = "ไม่สามารถแก้ไขแฟ้มประวัติที่ไม่ใช่ของคุณได้"
        redirect_to "/" and return
      end
    end

end
