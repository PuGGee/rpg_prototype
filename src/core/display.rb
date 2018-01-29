module Core
  class Display

    def self.show_card(card)
      result = catch(:end_event) do
        card.start
      end
      if result == :shuffle
        Cards.reshuffle(card)
      end
      gets
    end
  end
end
