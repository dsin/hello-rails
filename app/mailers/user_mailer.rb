class UserMailer < ApplicationMailer
  default from: 'phong.ek@gmail.com'

  # TO test this in console : UserMailer.welcome_email().deliver
  def welcome_email()
    @url  = 'http://example.com/login'
    mail(to: 'phongsathorn.eakamongul@rockyou.com',
         subject: 'Welcome to My Awesome Site') do |format|
      # format.html { render 'another_template' }
      format.text { render plain: 'Render text' }
    end
  end
end
