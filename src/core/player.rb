module Core
  class Player

    def self.create
      @instance = new(10, 0)
    end

    def self.get
      @instance
    end

    private_class_method :new

    attr :max_health, :health, :weapon

    def initialize(max_health, combat_modifier)
      @max_health = max_health
      @health = max_health
      @combat_modifier = combat_modifier
    end

    def take_damage(amount)
      @health -= amount
    end

    def stats
      [
        "Health: #{health}/#{max_health}",
        "Combat modifier: #{combat_modifier}"
      ].tap do |lines|
        lines << "Equipped weapon: #{weapon.name}" if weapon
      end
    end

    def items
      @items ||= []
    end

    def equipable_items
      items.select(&:weapon?)
    end

    def combat_items
      items.select(&:combat_item?)
    end

    def equip_item(item)
      @weapon = item
    end

    def combat_modifier
      @combat_modifier + [weapon, *combat_items].compact.map(&:combat_value).inject(0, &:+)
    end
  end
end
