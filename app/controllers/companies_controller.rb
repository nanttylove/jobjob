class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_has_company, only: [:new, :create]
  before_action :check_same_user, only: [:edit, :update, :destroy]
  before_filter :require_user, only: [:edit, :new, :create, :update, :destroy]

  respond_to :html

  def index
    @companies = Company.all
    respond_with(@companies)
  end

  def show
    respond_with(@company)
  end

  def new
    @company = Company.new
    respond_with(@company)
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    @company.save
    respond_with(@company)
  end

  def update
    @company.update(company_params)
    respond_with(@company)
  end

  def destroy
    @company.destroy
    respond_with(@company)
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:user_id, :name, :branch, :address, :phone)
    end

    def require_user
      unless current_user.role_id == 1
        flash[:alert] = "คุณไม่มีสิทธิ์สร้างข้อมูลบริษัท"
        redirect_to "/" and return
      end
    end

    def check_has_company
      unless current_user.company == nil
        flash[:alert] = "สามารถสร้างข้อมูลบริษัทได้ชุดเดียวเท่านั้น"
        redirect_to "/" and return
      end
    end

    def check_same_user
      unless current_user.id == @company.user_id
        flash[:alert] = "ไม่สามารถแก้ไขข้อมูลบริษัทที่ไม่ใช่ของคุณได้"
        redirect_to "/" and return
      end
    end

end
