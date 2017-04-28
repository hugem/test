class TwitterClient

  def self.get_profile(handle)
    client.user_timeline(handle, count: 25)
  end

  def self.client
    @@client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = "V8WncDv0NDrSxm3drdzX9B3Vm"
      config.consumer_secret     = "MCJxAACLCMXqwor4sZ3TB0xyXITuZFQN022RBwnfdbeuL3jMQt"
    end
  end

end
