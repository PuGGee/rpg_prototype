module Card
  module Items
    class Bow < Item

      def opening_text
        "You found a bow"
      end

      def name
        'bow'
      end

      def description
        'Can kill a monster without risking harm. Combat roll -3'
      end

      def combat_item?
        true
      end

      def ranged_weapon?
        true
      end

      def ranged_combat_modifier
        -3
      end
    end
  end
end
