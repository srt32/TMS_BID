class UserMailer < ActionMailer::Base
  default from: "tmsbid@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.attendee_confirmation.subject
  #
  def attendee_confirmation
    @greeting = "Hi"

    mail to: "simon.taranto@gmail.com"
  end

  def admin_notification
    @greeting = "Hi"

    mail to: "simon.taranto@gmail.com"
  end
end
