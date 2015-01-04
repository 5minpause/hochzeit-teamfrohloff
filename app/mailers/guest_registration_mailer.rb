class GuestRegistrationMailer < ApplicationMailer
  default from: "no-reply@teamfrohloff.de"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.guest_registration_mailer.send_notification.subject
  #
  def send_notification(guest)
    @guest = guest

    mail to: "holger@5minutenpause.com", subject: "Neue Gäste"#, cc: "juliane.hainzl@gmail.com"
  end
end
