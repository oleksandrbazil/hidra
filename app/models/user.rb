class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  has_many :works
  has_many :authorizations

  SOCIALS = {
      facebook: 'Facebook',
      google_oauth2: 'Google',
  }

  def self.user_from_omniauth(omniauth, current_user)
    # omniauth is different from oauth and from session
    omniauth = omniauth.as_json

    authorization = Authorization.where(
        provider: omniauth['provider'],
        uid: omniauth['uid'].to_s,
    ).first_or_initialize
    authorization['token'] = omniauth['credentials']['token']
    authorization['secret'] = omniauth['credentials']['secret']

    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', omniauth['info']['email']).first : current_user
      if user.blank?
        user = User.new
        user.skip_confirmation!
        user.password = Devise.friendly_token[0, 20]
        user.fetch_details(omniauth)
        user.save
      end
      authorization.user = user
      authorization.save
    end
    authorization.user
  end

  def fetch_details(omniauth)
    self.email = omniauth['info']['email']
  end
end
