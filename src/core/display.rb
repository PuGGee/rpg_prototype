module Core
  class Display

    def self.show_card(card)
      Screen::Executor.new(card).start
    end
  end
end
