class EventMailer < ApplicationMailer

  def event_received
    email = params[:email]
    mail(to: email, subject: "We Received Your Event")
  end

  def event_approved
    @email = params[:email]
    @id = params[:id]
    @edit_token = params[:edit_token]
    mail(to: @email, subject: "Your Event Was Approved")
  end

  def event_denied
    @email = params[:email]
    @id = params[:id]
    @edit_token = params[:edit_token]
    mail(to: @email, subject: "Your Event Was Denied")
  end

end
