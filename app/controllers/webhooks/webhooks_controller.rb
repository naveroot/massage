# frozen_string_literal: true

class Webhooks::WebhooksController < Webhooks::BaseController
  skip_before_action :verify_authenticity_token

  def callback
    bot = Bot.find_by_prefix(params[:other])
    message = user.messages.new(body: text)
    message.bot = bot
    message.save!
    head :ok, content_type: 'text/html'
  end

  private

  def webhook
    params['webhook']
  end

  def text
    webhook[:message][:text]
  end

  def from
    webhook[:message][:from]
  end

  def user
    @user ||= User.find_by(telegram_id:from[:id]) || register_user
  end

  def register_user
    User.create(telegram_id: from[:id], first_name: from[:first_name], last_name: from[:last_name])
  end
end
