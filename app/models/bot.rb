class Bot < ApplicationRecord
  after_create :set_webhook

  def set_webhook
    Telegram.set_webhook(token, prefix)
  end
end
