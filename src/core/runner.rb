module Core
  class Runner

    class << self
      attr :instance
    end

    def self.start_game
      @instance = new
      @instance.start_game
    end

    def start_game
      Player.create
      Player.get.take_item(Card::Items::Shield.new(Player.get))
      Cards.generate

      main_loop
    end

    private

    def main_loop
      loop do
        Display.show_card(Card::GoblinPod.new(Player.get))
        card = Cards.draw
        Display.show_card(card)
        Player.get.end_turn
      end
    end
  end
end
