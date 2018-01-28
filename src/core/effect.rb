module Core
  class Effect

    def initialize
      @timer = set_timer
    end

    def set_timer
      @timer = 0
    end

    def combat_value
      0
    end

    def run_out?
      @timer -= 1
      @timer <= 0
    end
  end
end
