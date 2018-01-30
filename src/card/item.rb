module Card
  class Item < Base

    def start
      Screen::Update.show(opening_text)
      player.take_item(self)
    end

    def opening_text
      "You found an item"
    end

    def description
      'Does nothing'
    end

    def combat_value
      0
    end

    def agility_modifier
      0
    end

    def name
      'item'
    end

    def weapon?
      false
    end

    def ranged_weapon?
      false
    end

    def ranged_combat_modifier
      0
    end

    def combat_item?
      false
    end

    def do_combat_action(player)
    end

    def non_combat_item?
      false
    end

    def do_non_combat_action(player)
    end

    def used_up?
      false
    end

    def special
      []
    end
  end
end
