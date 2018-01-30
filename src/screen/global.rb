module Screen
  class Global

    module Actions

      def self.stats
        :stats
      end

      def self.items
        :items
      end

      def self.equip
        :equip
      end
    end

    def self.stats(player)
      Update.show([
        "Health: #{player.health}/#{player.max_health}",
        "Talent: #{player.talent}",
        "Combat modifier: #{player.combat_modifier}",
      ].tap do |lines|
        lines << "Equipped weapon: #{player.weapon.name}" if player.weapon
      end)
    end

    def self.items(player)
      if player.items.any?
        Update.show(player.items.map { |item| "#{item.name}: #{item.description}" })
      else
        Update.show('You have no items')
      end
    end

    def self.equip(player)
      items = player.equipable_items
      return Update.show('You have nothing to equip') unless items.any?
      selected_item_name = OptionGroup.new(player, items.map(&:name)).select_option
      selected_item = player.items.detect { |item| item.name == selected_item_name }
      player.equip_item(selected_item)
      Update.show("You have equipped #{selected_item_name}")
    end
  end
end
