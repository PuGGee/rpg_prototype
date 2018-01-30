module Core
  class Player

    TALENTS = [
      :eagle_eyed,
      :buff,
      :agile
    ]

    def self.create
      @instance = new(10, TALENTS.sample)
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
      if has_special?(:shielded) && rand(2).odd?
        amount -= 1
        Screen::Update.show("Your shield blocks 1 damage")
      end
      @health -= amount
    end

    def end_turn
      effects.dup.each do |effect|
        effects.delete(effect) if effect.run_out?
      end
    end

    def items
      @items ||= []
    end

    def effects
      @effects ||= []
    end

    def take_item(item)
      items << item
    end

    def remove_item(item)
      items.delete(item)
    end

    def remove_random_item
      random_item = items.sample
      remove_item(random_item)
      Screen::Update.show("You lose your #{random_item.name}")
    end

    def add_effect(effect)
      effects << effect
    end

    def equipable_items
      items.select(&:weapon?)
    end

    def combat_items
      items.select(&:combat_item?)
    end

    def non_combat_items
      items.select(&:non_combat_item?)
    end

    def equip_item(item)
      @weapon = item
    end

    def combat_modifier
      [weapon, *combat_items, *effects].compact.map(&:combat_value).inject(0, &:+)
    end

    def agility_modifier
      [*non_combat_items].map(&:agility_modifier).inject(0, &:+) + (has_talent?(:agile) ? 1 : 0)
    end

    def has_talent?(talent_name)
      talent == talent_name
    end

    def has_special?(special)
      items.flat_map(&:special).include?(special)
    end

    def get_item(item_name)
      items.detect { |item| item.name.to_s == item_name.to_s }.tap do |item|
        raise "#{item_name} cannot be found" unless item
      end
    end

    def has_item?(item_name)
      !!get_item
    end

    def dead?
      health <= 0
    end
  end
end
