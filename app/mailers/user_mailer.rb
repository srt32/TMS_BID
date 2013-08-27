class UserMailer < ActionMailer::Base
  default from: "tmsbid@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.attendee_confirmation.subject
  #
  def attendee_confirmation(attendee)
    @attendee = attendee
    @url = "http://sheltered-refuge-2845.herokuapp.com/"
    subject = "Thanks for signing up for The Mountain School's Big Idea Day"

    mail to: @attendee.email,
      subject: subject.to_s
  end

  def admin_notification(attendee)
    @attendee = attendee
    @url = "http://sheltered-refuge-2845.herokuapp.com/"
    subject = "There is a new Big Idea Day sign up"

    mail to: "tmsbid@gmail.com",
      subject: subject.to_s
  end
end
