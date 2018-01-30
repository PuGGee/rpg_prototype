module Card
  class PitTrap < Trap

    def opening_text
      "You encounter a pit trap!"
    end

    private

    def difficulty_value
      7
    end

    def inflict_penalty
      player.take_damage(2)
    end

    def penalty_text
      [
        "You fall in the pit!",
        "You take 2 damage"
      ]
    end

    def success_text
      "You successfully avoid the pit"
    end
  end
end
