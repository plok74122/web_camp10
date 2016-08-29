class ArticlesController < ApplicationController

  def show
    article  = Article.find(params[:id])
    render :json => article.to_json
  end

  def create
    article = Article.new(:title => params[:title] , :content => params[:content])
    if article.save
      render :json => {:article => article , :message => "success"} , :status => 200
    else
      render :json => {:errors => article.errors , :message => "Invalid"}, :status => 400
    end
  end
end
