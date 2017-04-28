class TwitterClient
  def self.get_profile(handle)
    client.user_timeline(handle, count: 25)
  end

  def self.client
    @@client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
    end
  end
end
