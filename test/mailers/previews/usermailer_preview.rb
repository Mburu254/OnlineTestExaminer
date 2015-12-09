# Preview all emails at http://localhost:3000/rails/mailers/usermailer
class UsermailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/usermailer/account_activation
  def account_activation
    Usermailer.account_activation
  end

  # Preview this email at http://localhost:3000/rails/mailers/usermailer/password_reset
  def password_reset
    Usermailer.password_reset
  end

end
