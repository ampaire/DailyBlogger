class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, uniqueness: true, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    url = " https://robohash.org/avatar/#{gravatar_id}.png"
  end
end
