module Card
  module Items
    module MultipleUse

      def used_up?
        @used_count ||= 0
        @used_count >= max_uses
      end

      def do_combat_action(player)
        @used_count ||= 0
        @used_count += 1
        super
      end

      def do_non_combat_action(player)
        @used_count ||= 0
        @used_count += 1
        super
      end

      def description
        puts "max_uses: #{max_uses.inspect}"
        puts "@used_count: #{@used_count.inspect}"
        "#{super} (#{max_uses - (@used_count || 0)} uses left)"
      end

      def self.uses(use_count)
        Module.new do
          include MultipleUse

          define_method :max_uses do
            use_count
          end
        end
      end
    end
  end
end
