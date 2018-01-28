module Card
  module Items
    class CombatPotion < Item
      prepend SingleUse

      def opening_text
        "You found a combat potion"
      end

      def name
        'combatpotion'
      end

      def description
        'Single use, gives +1 to combat roll for current combat'
      end

      def combat_item?
        true
      end

      def do_combat_action(player)
        player.add_combat_mod(1)
      end
    end
  end
end
