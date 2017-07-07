require './base.rb'

module A

	def default_expression
		case message
		when "/start"
			answer = "Привет меня зовут Капитан Морган,
			 ты можешь задать мне любой вопрос на который я с радостью отвечу"
		when "/help"
			answer = "Список доступных команд-можешь задать мне вопрос-можешь спросить время командой /time"
		when "/time"
			answer = Time.now
		when "/comand"
			answer = "Список команд"
		end
	end

	def each_arr
		i = 0
		while i < ARR_QUESTION.length
			x = ARR_QUESTION[i].include? message.downcase
				if x == true
					answer = ARR_ANSWER[i].sample
					return answer
				end
		i = i + 1
		end
	end

	def send_sample
		answer = ANSWERS.sample
	end
end

class Message

	include A;

	attr_reader :message
	def initialize(message)
		@message = message
	end
end