module Authentication
  def sign_in(user)
    fill_in 'E-mail', with: user.email
    fill_in 'Senha', with: user.password
    click_button 'Log in'
  end
end
