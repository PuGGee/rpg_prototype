module Core
  class PlayerMod < SimpleDelegator

    alias_method :player, :__getobj__

    attr :combat_modifier_mod

    def initialize(*args)
      super
      @combat_modifier_mod = 0
    end

    def add_combat_mod(value)
      @combat_modifier_mod += value
    end

    def combat_value
      player.combat_modifier + @combat_modifier_mod
    end
  end
end
