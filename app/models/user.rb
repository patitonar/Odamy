class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  validates :name, presence: true, length: {maximum: 25}

  has_many :subscriptions
  has_many :projects, through: :subscriptions


  after_create :send_notification

  def send_notification
  	MyMailer.new_user(self).deliver
  end

  def self.find_for_google_oauth2(access_token, signed_in_resourse=nil)
  	data = access_token.info
  	user = User.where(:provider => access_token.provider, :uid => access_token.uid).first

  	if user
  		return user
  	else
  		registered_user = User.where(:email => access_token.email).first
  		if registered_user
  			return registered_user
  		else
  			user = User.create(
  				name: data["name"],
  				provider: access_token.provider,
  				email: data["email"],
  				uid: access_token.uid,
          image: data["image"],
  				password: Devise.friendly_token[0,20],
  			)
  		end
  	end
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resourse=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid).first

    if user
      return user
    else
      registered_user = User.where(:email => data.email).first
      if registered_user
        return registered_user
      else
        user = User.create(
          name: access_token.extra.raw_info.name,
          provider: access_token.provider,
          email: data.email,
          uid: access_token.uid,
          image: data.image,
          password: Devise.friendly_token[0,20],
        )
      end
    end
  end

  def self.find_for_github_oauth(access_token, signed_in_resourse=nil)
    data = access_token["info"]
    user = User.where(:provider => access_token["provider"], :uid => access_token["uid"]).first

    if user
      return user
    else
      registered_user = User.where(:email => data["email"]).first
      if registered_user
        return registered_user
      else

        if data["name"].nil?
          name = data["nickname"]
        else
          name = data["name"]
        end

        user = User.create(
          name: name,
          provider: access_token["provider"],
          email: data["email"],
          uid: access_token["uid"],
          image: data["image"],
          password: Devise.friendly_token[0,20],
        )
      end
    end
  end
end
