class SignUpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sign_up_mailer.printnplay.subject
  def mailertest(download_signup)
    raise
  end

  #
  def printnplay(download_signup)
    @greeting = "Ahoy matey!"

    mail to: download_signup.email
  end

  def hello
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'admin@stolentreasure.com',
      :from => 'admin@stolentreasure.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end
