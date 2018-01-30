module Core
  class Cards

    def self.generate
      cards_array = [
        *10.times.map { Card::Goblin.new(Player.get) },
        *8.times.map { Card::Minotaur.new(Player.get) },
        *4.times.map { Card::PitTrap.new(Player.get) },
        *4.times.map { Card::AcidTrap.new(Player.get) },
        Card::Items::SmokeBomb.new(Player.get),
        Card::Items::Sword.new(Player.get),
        Card::Items::FurySpell.new(Player.get),
        Card::Items::FocusPotion.new(Player.get),
        Card::Items::Bow.new(Player.get),
      ].shuffle
      @instance = new(cards_array)
    end

    def self.draw
      @instance.draw
    end

    def self.reshuffle(card)
      @instance.cards.insert(rand(@instance.cards.length + 1), card)
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
