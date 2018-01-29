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
      Cards.generate

      main_loop
    end

    private

    def main_loop
      loop do
        card = Cards.draw
        Display.show_card(card)
        Player.get.end_turn
      end
    end
  end
end
