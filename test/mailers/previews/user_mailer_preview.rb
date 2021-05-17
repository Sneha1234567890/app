class UserMailerPreview < ActionMailer::Preview
 
  def signup_confirmation
    UserMailer(user: User.first).signup_confirmation
  end


end

