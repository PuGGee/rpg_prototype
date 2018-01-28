module Card
  module Items
    class Sword < Item

      def name
        'sword'
      end

      def opening_text
        'You found a sword'
      end

      def description
        '+2 to combat roll when equipped'
      end

      def weapon?
        true
      end

      def combat_value
        2
      end
    end
  end
end
