class AddBotToMessage < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :bot
  end
end
