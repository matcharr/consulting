class UserMailer < ApplicationMailer
  default from: 'support@alfoldievaluation.com'
 
  def question_email(name, email, body)
    @name = name
    @body = body
    @email = email
    mail(to: "balfoldi@yahoo.fr", subject: "Question de #{@name}") 
  end

  def welcome_email(user)
    @user = user
    @url  = 'http://www.alfoldievaluation.com/' 
    mail(to: @user.email, subject: 'Bienvenue') 
  end

  def newsletter_mailer
    @users = User.all#where(newsletter: true)
    emails = @users.collect(&:email).join(", ")
    mail(to: emails, subject: "Hi, this is a test mail.")
  end
end   