class CommentsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_comment_user, only: [:destroy, :edit]

  def create
    puts "$"*100
    puts params
    article = Comment.create(content: params[:comment][:content], user: current_user, article: Article.find(params[:article_id]))
    redirect_to articles_path
  end

  def update
  end

  def edit
    @comment = Comment.find(params[:id])

    @article = @comment.article
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to articles_path
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
