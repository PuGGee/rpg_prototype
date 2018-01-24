module Screen
  class Global

    def self.stats
      Update.show(Core::Player.get.stats)
    end

    def self.equip
      items = Core::Player.get.equipable_items
      selected_item_name = OptionGroup.new(items.map(&:name), true).select_option
      selected_item = Core::Player.get.items.detect { |item| item.name == selected_item_name }
      Core::Player.get.equip_item(selected_item)
      Update.show("You have equipped #{selected_item_name}")
    end
  end
end
