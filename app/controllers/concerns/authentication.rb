module Authentication
  extend ActiveSupport::Concern

  def sign_up(omniauth)
    user = User.user_from_omniauth(omniauth, current_user)
    if user.persisted?
      sign_in user
      flash[:notice] = t('devise.omniauth_callbacks.success', :kind => User::SOCIALS[params[:action].to_sym])
      if user.sign_in_count == 1
        redirect_to root_path
      else
        redirect_to root_path
      end
    else
      session['devise.user_attributes'] = user.attributes
      redirect_to new_user_registration_url
    end
  end
end