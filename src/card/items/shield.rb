module Card
  module Items
    class Shield < Item

      def opening_text
        "You found a wooden shield"
      end

      def name
        'shield'
      end

      def description
        'Every time you take damage, 50% chance to negate 1 of it'
      end

      def special
        [
          :shielded
        ]
      end
    end
  end
end
