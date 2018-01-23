module Screen
  class Executor

    attr :card

    def initialize(card)
      @card = card
    end

    def start
      Event.show(card.text)
      gets
      loop do
        break unless card.next
        Event.show(card.text)
        gets
      end
    end
  end
end
