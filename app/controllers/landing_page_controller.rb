class LandingPageController < ApplicationController
  def index
    @article = Article.last
    @comments = Comment.where(article: @article)
  end
end
