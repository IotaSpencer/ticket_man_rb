require 'hashugar'
require 'pathname'
module TicketMan
  class Config
    attrs :cfg
    def initialize
      @cfg = Hashugar.new(Pathname.join(Dir.home, "ticket_man", "config.yml"))
    end
  end
end
