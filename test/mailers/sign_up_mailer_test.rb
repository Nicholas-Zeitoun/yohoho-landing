require 'test_helper'

class SignUpMailerTest < ActionMailer::TestCase
  test "printnplay" do
    mail = SignUpMailer.printnplay
    assert_equal "Printnplay", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
