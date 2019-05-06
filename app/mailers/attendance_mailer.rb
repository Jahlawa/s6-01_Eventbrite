class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
  
  def participation_email(user, event)
    # We stock the parameter user in an instance variable
    @user = user 
    @event = event

    # We stock the url to use it in the e-mail
    @url  = 'https://eventbrite-like-like.herokuapp.com/' 

    # We use mail to send a mail to a specific address with 
    # a custom subject
    mail(to: @user.email, subject: 'Vous participez à #{@event.title} !') 
  end
end