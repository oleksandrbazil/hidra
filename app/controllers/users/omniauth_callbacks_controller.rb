class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include Authentication

  def all
    omniauth = request.env['omniauth.auth']

    user = User.user_from_omniauth(omniauth, current_user)

    if user.email.nil?
      session[:omniauth_data] = omniauth
      render 'users/sign_up_email/index'
    else
      sign_up(omniauth)
    end
  end

  User::SOCIALS.each do |k, _|
    alias_method k, :all
  end
end