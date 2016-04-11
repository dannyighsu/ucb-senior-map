class UserMailer < ActionMailer::Base
  default :from => "me@mydomain.com"

  def registration_confirmation(user)
    @user = user
    mail(to: "#{user.first_name} <#{user.email}>", subject: "UC Berkeley Senior Map Registration Confirmation")
  end
end
