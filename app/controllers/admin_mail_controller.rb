class AdminMailController < ApplicationController
  def new

  end

  def create
    puts params
    name = [params[:first_name], params[:last_name]].join(" ")
    UserMailer.question_email(name, params[:email], params[:body]).deliver_now
    respond_to do |format|
      format.html { redirect_to folders_path }
      format.js { }
    end
  end
end
