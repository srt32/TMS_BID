require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "attendee_confirmation" do
    mail = UserMailer.attendee_confirmation
    assert_equal "Attendee confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
