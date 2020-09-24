class FoldersController < ApplicationController
  before_action :authenticate_administrator, except: [:index]

  def new
    @folder = Folder.new
  end

  def index
    @folders = Folder.all
    @comment = Comment.new
    @comments = Hash.new
    @folders.each do |folder|
      @comments["#{folder}"] = []
      Comment.where(folder: folder).each do |comment|
        @comments["#{folder}"] << comment
        puts @comments[:folder]
      end
    end
    @comment = Comment.new
  end

  def create
    folder = Folder.new(post_params)
    if folder.save
      redirect_to folders_path
    else
      redirect_to new_folder_path
    end
  end

  
  def edit
    @folder = Folder.find(params[:id])
  end
  
  def update
    folder = Folder.find(params[:id])
    if folder.update(post_params)
      redirect_to folders_path
    else
      redirect_to new_folder_path
    end
  end
  
  def destroy
    Folder.find(params[:id]).destroy
    redirect_to folders_path
  end

  private

  def post_params
    post_params = params.require(:folder).permit(:title, :content)
  end



end
