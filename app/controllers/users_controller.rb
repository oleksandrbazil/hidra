class UsersController < ApplicationController
  include Authentication

  def signup_email
    data = session[:omniauth_data]
    data['info']['email'] = params[:email]
    sign_up(data)
    session.delete(:omniauth_data)
  end
end