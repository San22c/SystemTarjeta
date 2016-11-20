class ApplicationMailer < ActionMailer::Base

  default from: "systematarjeta@gmail.com"

   def sample_email(user)
     @user = user
      mail(to: @user.email, subject: 'Alta usuario')
   end
 


end
