class LandingPageController < ApplicationController
  def index
    @folder = Folder.last
    @comments = Hash.new
    @comments["#{@folder}"] = []
    Comment.where(folder: @folder).each do |comment|
      @comments["#{@folder}"] << comment
      puts @comments[:folder]
    end
    @comment = Comment.new
  end
end
