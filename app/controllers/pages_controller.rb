class PagesController < ApplicationController
  respond_to :html, :json
  def index
    @jobs = Job.all.order("created_at DESC").limit(5)
    @articles = Article.all.order("created_at DESC").limit(10)
  end
end
