json.extract! bot, :id, :name, :username, :token, :prefix, :created_at, :updated_at
json.url bot_url(bot, format: :json)
