module Core
  class Player

    TALENTS = [
      :eagle_eyed,
      :buff,
      :agile
    ]

    def self.create
      @instance = new(10, nil)
    end

    def self.get
      @instance
    end

    private_class_method :new

    attr :max_health, :health, :weapon, :talent

    def initialize(max_health, talent)
      @max_health = max_health
      @health = max_health
      @talent = talent
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
      [weapon, *combat_items].compact.map(&:combat_value).inject(0, &:+)
    end

    def has_talent?(talent_name)
      talent == talent_name
    end

    def get_item(item_name)
      items.detect { |item| item.name.to_s == item_name.to_s }.tap do |item|
        raise "#{item_name} cannot be found" unless item
      end
    end

    def has_item?(item_name)
      !!get_item
    end

    def use_combat_item(item_name, player)
      item = get_item(item_name)
      raise ArgumentError.new("#{item_name} is not a combat item") unless item.combat_item?
      item.do_combat_action(player)
    end

    def dead?
      health <= 0
    end
  end
end
