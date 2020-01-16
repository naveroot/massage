require 'net/http'
require 'uri'

class Telegram
  def self.set_webhook(token, prefix)
    uri = URI("https://api.telegram.org/#{token}/setWebhook?url=https://agile-ocean-36103.herokuapp.com/webhooks/telegram_#{prefix}")
    Net::HTTP.get uri
  end
end