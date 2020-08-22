class ArticlesController < ApplicationController
  before_action :authenticate_administrator, except: [:index]

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
    @comment = Comment.new
    @comments = Hash.new

    @articles.each do |article|
      @comments["#{article}"] = []
      Comment.where(article: article).each do |comment|
        @comments["#{article}"] << comment
        puts @comments[:article]
      end
    end
    
    puts @comments

    #comment#new
    @comment = Comment.new
  end

  def create
    article = Article.new(post_params)
    if article.save
      redirect_to articles_path
    else
      redirect_to new_article_path
    end
  end

  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    article = Article.find(params[:id])
    if article.update(post_params)
      redirect_to articles_path
    else
      redirect_to new_article_path
    end
  end
  
  def destroy
    Article.find(params[:id]).destroy
    redirect_to articles_path
  end

  private

  def post_params
    post_params = params.require(:article).permit(:title, :content)
  end



end
