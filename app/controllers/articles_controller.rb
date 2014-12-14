class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_filter :require_user, only: [:edit, :new, :create, :update, :destroy]

  respond_to :html, :json

  def index
    @articles = Article.all.order("created_at DESC")
    respond_with(@articles)
  end

  def show
    respond_with(@article)
  end

  def new
    @article = Article.new
    respond_with(@article)
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save
    respond_with(@article)
  end

  def update
    @article.update(article_params)
    respond_with(@article)
  end

  def destroy
    @article.destroy
    respond_with(@article)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :user_id)
    end

    def require_user
      unless current_user.role_id == 3
        flash[:alert] = "คุณไม่มีสิทธ์ประกาศข่าว"
        redirect_to "/" and return
      end
    end
end
