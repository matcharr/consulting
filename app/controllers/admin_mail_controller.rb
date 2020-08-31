class AdminMailController < ApplicationController
  def new

  end

  def create
    puts params
    name = [params[:first_name], params[:last_name]].join(" ")
    UserMailer.question_email(name, params[:email], params[:body]).deliver_now

  end
end
