module Card
  module Items
    module SingleUse

      def used_up?
        @used_up
      end

      def do_combat_action(player)
        @used_up = true
        super
      end

      def do_non_combat_action(player)
        @used_up = true
        super
      end
    end
  end
end
