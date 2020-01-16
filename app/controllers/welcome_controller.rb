class WelcomeController < ApplicationController
  #around_action :switch_locale
  before_action :set_messages

  def index
    @client_ip = request.remote_ip
  end

  private

  #def switch_locale(&action)
  #  I18n.locale = params[:locale] || I18n.default_locale
  #  I18n.with_locale(locale, &action)
  #end
  #
  #def default_url_option
  #  { locale: I18n.locale }
  #end

  def set_messages
    @messages = Message.all
  end


end
