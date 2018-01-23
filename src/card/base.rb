module Card
  class Base

    attr :text, :player

    def initialize(player)
      @player = player
      @text = opening_text
    end

    def opening_text
      'this is a card'
    end

    def next
      false
    end
  end
end
