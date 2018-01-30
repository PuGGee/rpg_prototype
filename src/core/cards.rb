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
      @instance = new(cards_array, cards_array.dup, cards_array.dup)
    end

    def self.draw
      @instance.draw
    end

    def self.reshuffle(card)
      @instance.current_deck.insert(rand(@instance.current_deck.length + 1), card)
    end

    attr :decks

    def initialize(first_deck, second_deck, third_deck)
      @decks = [first_deck, second_deck, third_deck]
      @current_deck = 0
    end

    def draw
      if current_deck.any?
        current_deck.pop
      else
        @current_deck += 1
        Screen::Update.show([
          "Deck #{@current_deck} of 3 finished",
          "Continuing to next deck"
        ])
      end
    end

    def current_deck
      decks[@current_deck]
    end
  end
end
