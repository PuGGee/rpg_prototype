module Card
  module Items
    class Bow < Item
      prepend MultipleUse.uses(6)

      def opening_text
        "You found a bow"
      end

      def name
        'bow'
      end

      def description
        'Can kill a monster without risking harm. Combat roll -1'
      end

      def combat_item?
        true
      end

      def ranged_weapon?
        true
      end

      def ranged_combat_modifier
        -1
      end
    end
  end
end
