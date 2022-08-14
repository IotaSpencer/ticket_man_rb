require 'thor'

module TicketMan
  class CLI < Thor
    class_option :env, aliases: %w[-e], type: :string, default: 'dev', enum: %w[prod dev], banner: 'ENVIRONMENT'

    desc "connect [options]", "Start the bot"
    def start
      case self.options.env
      when 'dev'
        puts 'dev'
      when 'prod'
        puts 'prod'

      end
    end
  end
end