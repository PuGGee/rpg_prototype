module Core
  class PlayerMod < SimpleDelegator

    alias_method :player, :__getobj__

    def initialize(*args)
      super
      @combat_modifier_mod = 0
      @agility_modifier_mod = 0
    end

    def add_combat_mod(value)
      @combat_modifier_mod += value
    end

    def add_agility_mod(value)
      @agility_modifier_mod += value
    end

    def combat_modifier
      player.combat_modifier + @combat_modifier_mod
    end

    def agility_modifier
      player.agility_modifier + @agility_modifier_mod
    end

    def use_combat_item(item_name)
      item = get_item(item_name)
      raise ArgumentError.new("#{item_name} is not a combat item") unless item.combat_item?
      result = item.do_combat_action(self)
      player.remove_item(item) if item.used_up?
      result
    end
  end
end
