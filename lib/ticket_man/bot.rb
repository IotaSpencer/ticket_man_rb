require 'discordrb'
require 'ticket_man/config'
module TicketMan
  class Bot 
    attr_reader :bot

    def initialize
      @bot = Discordrb::Bot.new
      @bot.token = TicketMan::Config&.bot&.token
      
    end
  end
end
