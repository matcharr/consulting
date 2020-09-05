class UserMailer < ApplicationMailer
    default from: 'support@alfoldievaluation.com'
   
    def question_email(name, email, body)
      @name = name
      @body = body
      @email = email
      mail(to: "balfoldi@yahoo.fr", subject: "Question de #{@name}") 
    end

    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end
end   