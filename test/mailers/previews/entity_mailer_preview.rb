# Preview all emails at http://localhost:3000/rails/mailers/entity_mailer
class EntityMailerPreview < ActionMailer::Preview
 def email_confirmation
   entity = Entity.find_by(email: "chrismetzgr@gmail.com")
   EntityMailer.with(email: entity.email, confirmation_token: entity.confirmation_token).email_confirmation
 end
end
