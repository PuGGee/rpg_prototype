module Card
  class Base

    attr :player

    def initialize(player)
      @player = Core::PlayerMod.new(player)
    end

    def start
      false
    end

    def opening_text
      'This is a card'
    end
  end
end
