module Core
  class Player

    def self.create
      @instance = new(10, 0)
    end

    def self.get
      @instance
    end

    private_class_method :new

    attr :max_health, :health, :combat_modifier

    def initialize(max_health, combat_modifier)
      @max_health = max_health
      @health = max_health
      @combat_modifier = combat_modifier
    end

    def take_damage(amount)
      @health -= amount
    end
  end
end
