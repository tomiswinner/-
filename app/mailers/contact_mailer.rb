class ContactMailer < ApplicationMailer
  default from: 'noreply@example.com'
  default to: 'admin@example.com'
  layout 'mailer'

  def send_mail(contact)
    @contact = contact
    mail(from: contac.email, to: ENV['MAIL_ADDRESS'], subject: 'お届け') do |format|
      format.text
    end
  end
end
