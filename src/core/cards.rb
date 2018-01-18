module Core
  class Cards

    def self.generate
      @instance = new(10.times.map { Card::Goblin.new })
    end

    def self.draw
      @instance.draw
    end

    attr :cards

    def initialize(cards)
      @cards = cards
    end

    def draw
      cards.pop
    end
  end
end
