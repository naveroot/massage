require 'open-uri'

class Telegram
  def self.set_webhook(token, prefix)
    open("https://api.telegram.org/#{token}/setWebhook?url=https://34267474.ngrok.io/webhooks/telegram_#{prefix}")
  end
end