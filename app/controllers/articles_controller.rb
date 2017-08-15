class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  #Get Articles
  def show
    @article = Article.find(params[:id])   

  end
  #Get New
  def new
    @article = Article.new    
  end 
  
  #Post Articles
  def create
    @article = Article.new(title:params[:article][:title], body:params[:article][:body])
    
    if @article.save
      redirect_to @article
    else
      render :new
    end    
  end
end
