class AdminMailController < ApplicationController
  invisible_captcha only: [:create]

  def new

  end

  def create
    name = [params[:first_name], params[:last_name]].join(" ")
    UserMailer.question_email(name, params[:email], params[:body]).deliver_now
    redirect_to folders_path
  end

  private

  def spam_detected
    puts = "bot" * 100
    redirect_to roots_path
  end
end
