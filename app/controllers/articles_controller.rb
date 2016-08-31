class ArticlesController < ApplicationController
  before_action :set_article, :except => [:index, :create]

  def index
    @articles = Article.all
    render :json => @articles.to_json
  end

  def show
    @article = Article.find(params[:id])
    render :json => @article.to_json
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render :json => { :article => @article, :message => "create success" }, :status => 200
    else
      render :json => { :errors => @article.errors, :message => "Invalid" }, :status => 400
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      render :json => { :article => @article, :message => "update success" }, :status => 200
    else
      render :json => { :errors => @article.errors, :message => "Invalid" }, :status => 400
    end
  end

  def destroy
    @article.destroy
    render :json => { :message => "destroy success" }, :status => 200
  end

  protected
  def article_params
    params.permit(:title, :content)
  end

  def set_article
    @article = Article.find_by_id(params[:id])
    unless @article
      render :json => { :message => "can't find this article" }, :status => 400
      return
    end
  end
end
