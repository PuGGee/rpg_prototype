module Card
  class Item < Base

    def start
      Screen::Update.show(opening_text)
      player.items << self
    end

    def opening_text
      "You found an item"
    end

    def combat_value
      0
    end

    def name
      'item'
    end

    def weapon?
      false
    end

    def combat_item?
      false
    end

    def do_combat_effect(player)
    end

    def non_combat_item?
      false
    end

    def do_non_combat_effect(player)
    end
  end
end
