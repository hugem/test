class Profile
  def initialize(handle)
    @handle = handle
  end

  def tweets
    key = "tweets-#{@handle}"
    Rails.cache.fetch(key, expires_in: 5.minutes) do
      TwitterClient.get_profile(@handle)
    end
  end
end
