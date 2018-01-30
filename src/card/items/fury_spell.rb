module Card
  module Items
    class FurySpell < Item
      prepend SingleUse

      def name
        'fury'
      end

      def opening_text
        "You found a spell: Fury!"
      end

      def description
        "(spell) #{good_effect_text} or #{bad_effect_text}"
      end

      def good_effect_text
        'add +3 to combat modifier for 3 turns'
      end

      def bad_effect_text
        'inflict 2 player damage'
      end

      def combat_item?
        true
      end

      def do_combat_action(player)
        if rand(2).odd?
          player.add_effect(FuryEffect.new)
          Screen::Update.show('You gained +3 to your combat roll')
        else
          player.take_damage(2)
          Screen::Update.show('You take 2 damage')
        end
      end

      class FuryEffect < Core::Effect

        def combat_value
          3
        end

        def set_timer
          3
        end
      end
    end
  end
end
