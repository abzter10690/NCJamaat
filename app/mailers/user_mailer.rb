class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_user.subject
  #
  def new_user(user)
    @user = user
    mail(to: "abbas_10690@yahoo.com" , subject: "North Carloina Jamaat : New User Registration") do |format|
      format.text
    end
  end
end
