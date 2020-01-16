class Bot < ApplicationRecord
  after_create :set_webhook
  has_many :messages


  def set_webhook
    Telegram.set_webhook(token, prefix)
  end
end
