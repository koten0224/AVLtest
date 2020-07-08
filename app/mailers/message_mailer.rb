class MessageMailer < ApplicationMailer

  def perform(subject, content)
    # subject: string
    # body: string
    @content = content
    mail to: "hr@avancevl.com", subject: subject
  end
end
