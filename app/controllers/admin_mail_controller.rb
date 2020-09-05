class AdminMailController < ApplicationController
  def new

  end

  def create
    puts params
    name = [params[:first_name], params[:last_name]].join(" ")
    UserMailer.question_email(name, params[:email], params[:body]).deliver_now
    flash[:success] = "Email envoyé"
    redirect_to new_admin_mail_path
  end
end
