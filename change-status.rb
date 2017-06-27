#! /usr/bin/env ruby
require 'slack'

Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end

client = Slack::Web::Client.new

puts client.users_profile_set(
  profile:
    {
      status_text: "riding a train",
      status_emoji: ":mountain_railway:"
    }
)

