require 'open-uri'

class Telegram
  def self.set_webhook(token, prefix)
    open("https://api.telegram.org/#{token}/setWebhook?url=https://agile-ocean-36103.herokuapp.com/webhooks/telegram_#{prefix}")
  end
end