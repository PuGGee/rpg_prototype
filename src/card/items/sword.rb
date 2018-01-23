module Card
  module Items
    class Sword < Item

      def opening_text
        'You found a sword'
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
