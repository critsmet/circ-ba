class EntityMailer < ApplicationMailer

  def email_confirmation
    email = params[:email]
    @confirmation_token = params[:confirmation_token]
    mail(to: email, subject: "E-mail Confirmation")
  end

end
