# frozen_string_literal: true

module ApplicationHelper
  def gravatar_url(user)
    gravatar_id = Digest::MD5.hexdigest(user.email).downcase
    url = " https://robohash.org/avatar/#{gravatar_id}.png"
  end
end
