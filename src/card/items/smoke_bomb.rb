module Card
  module Items
    class SmokeBomb < Item
      prepend MultipleUse.uses(3)

      def opening_text
        "You found some smoke bombs"
      end

      def name
        'smokebombs'
      end

      def description
        'shuffles the opponent back into the current deck'
      end

      def combat_item?
        true
      end

      def do_combat_action(player)
        Screen::Update.show([
          "The creature has been shuffled",
          "back into the current deck"
        ])
        throw(:end_event, :shuffle)
      end
    end
  end
end
