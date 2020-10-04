class AdminMailController < ApplicationController
  invisible_captcha only: [:create]

  def new

  end

  def create
    name = [params[:first_name], params[:last_name]].join(" ")
    UserMailer.question_email(name, params[:email], params[:body]).deliver_now
    respond_to do |format|
      format.html { redirect_to folder_path }
      format.js { }
    end    
  end

  private

  def spam_detected
    puts = "bot" * 100
    redirect_to roots_path
  end
end
