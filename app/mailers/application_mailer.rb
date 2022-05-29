class ApplicationMailer < ActionMailer::Base
  default from: %("TestGuru" <mail@test.guru>)
  layout 'mailer'
end
