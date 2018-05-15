module ApplicationHelper
  def signed_in?
    !!session[:twitter_oauth]
  end

  def current_users_twitter_client
    auth = session[:twitter_oauth]
    return nil unless auth

    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_API_KEY"]
      config.consumer_secret     = ENV["TWITTER_API_SECRET"]
      config.access_token        = auth[:token]
      config.access_token_secret = auth[:secret]
    end
  end
end
