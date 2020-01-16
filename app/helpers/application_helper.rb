# frozen_string_literal: true

module ApplicationHelper
  def message_logger(message)
    @message = message
    @date = @message.created_at.httpdate
    @first_name = @message.user.first_name
    @last_name = @message.user.last_name
    @text = @message.body
    "[#{@date}] [#{@first_name} #{@last_name}][#{@message.bot.name}]: #{@text}"
  end
end
