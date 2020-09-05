class CommentsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_comment_user, only: [:destroy, :edit]

  def create
    puts "$"*100
    puts params
    @folder = Folder.find(params[:folder_id])
    @comment = Comment.create(content: params[:comment][:content], user: current_user, folder: @folder)
    respond_to do |format|
      format.html { redirect_to folder_path }
      format.js { }
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(content: params[:comment][:content])
    puts "$"*60
    respond_to do |format|
      format.html { redirect_to redirect_to folders_path }
      format.js { }
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @folder = @comment.folder
    respond_to do |format|
      format.html { redirect_to edit_comment_path(@comment.id) }
      format.js { }
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to folders_path }
      format.js { }
    end
  end

  private

  def authenticate_comment_user
    unless current_user == Comment.find(params[:id]) || current_user.administrator
      flash[:danger] = "Vous devez avoire posté le commentaire pour effectuer cette action."
      redirect_to new_user_session_path
    end
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Vous devez créer un compte pour effectuer cette action."
      redirect_to new_user_session_path
    end
  end

end
