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

  def self.from_omniauth(auth, current_user)
    authorization = Authorization.where(
        provider: auth.provider,
        uid: auth.uid.to_s,
        token: auth.credentials.token,
        secret: auth.credentials.secret
    ).first_or_initialize
    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', auth['info']['email']).first : current_user
      if user.blank?
        user = User.new
        user.skip_confirmation!
        user.password = Devise.friendly_token[0, 20]
        user.fetch_details(auth)
        user.save
      end
      authorization.user = user
      authorization.save if user.email?
    end
    authorization.user
  end

  def fetch_details(auth)
    self.email = auth.info.email
  end
end
