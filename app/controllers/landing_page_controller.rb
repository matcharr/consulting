class LandingPageController < ApplicationController
  def index
    @article = Article.last
    @comments = Hash.new
    @comments["#{@article}"] = []
    Comment.where(article: @article).each do |comment|
      @comments["#{@article}"] << comment
      puts @comments[:article]
    end
    @comment = Comment.new
  end
end
