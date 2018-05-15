class TwitterController
  attr_reader :client

  def initialize(client)
    @client = client
  end

  def delete_recent_tweets_if(count: 10, &block)
    my_account = client.verify_credentials
    tweets = client.user_timeline(my_account, count: count)
    tweets_to_be_deleted = tweets.select(&block)
    client.destroy_status(tweets_to_be_deleted)
  end
end
