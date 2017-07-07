require 'telegram/bot'
require './controller.rb'

TOKEN = ''

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|

		answer_object = Message.new(message.text)

		answer = answer_object.default_expression if answer == nil
		answer = answer_object.each_arr if answer == nil
		answer = answer_object.send_sample if answer == nil


		bot.api.send_message(
				chat_id: message.chat.id,
				text: "#{answer}"
				)

	end
end





