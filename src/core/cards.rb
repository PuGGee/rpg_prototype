module Core
  class Cards

    def self.generate
      @instance = new(10.times.map { Card::Goblin.new(Player.get) })
    end

    def self.draw
      @instance.draw
    end

    def self.reshuffle(card)
      cards.insert(rand(cards.length + 1), card)
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
