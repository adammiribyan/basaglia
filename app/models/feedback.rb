# encoding: utf-8

class Feedback < MailForm::Base
  attribute :message
  attribute :name
  attribute :phone_or_email

  def headers
    {
      subject: "Новое сообщение с сайта",
      to: "olvitacompani@gmail.com",
      from: "olvitacompani@gmail.com"
    }
  end
end
