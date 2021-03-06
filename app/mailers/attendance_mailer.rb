class AttendanceMailer < ApplicationMailer
    default from: 'yanispsn76@hotmail.com'
 
    def attendance_email(attendance)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @attendance = attendance
      @user = attendance.user
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Tu participe à un évenement !') 
    end
end
