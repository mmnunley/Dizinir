class Notifier < ActionMailer::Base
 default from: "Marshall Nunley <dizinir@gmail.com>"

  def contact_form_send(contact_form)
    @contact_form = contact_form
    mail(:to => "Marshall Nunley <dizinir@gmail.com>", :subject => 'Dizinir Email')
  end

  
end
