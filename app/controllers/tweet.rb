require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "So8SmEhda6rDH6MM4ZUw64kQH"
  config.consumer_secret     = "6QlBRKixrsw7QcCrX2J4UfeMuJqhSJBIUdZoP3VriCjfb3TX0Y"
  config.access_token        = "3236710945-9i4RJZFcly5xfeEkw5r18so2YTJipCZrOBiVeZB"
  config.access_token_secret = "3Gyp0GXNeMf9x3Xl6GcCwIjUTXl9hW2Wb69TpHCkw8By8"
end

Student.each do |student|
  client.update("student.twitter_handle")
  sleep(10)
end
