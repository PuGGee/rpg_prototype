module Card
  class AcidTrap < Trap

    def opening_text
      "You encounter an acid trap!"
    end

    private

    def difficulty_value
      5
    end

    def inflict_penalty
      player.remove_random_item
    end

    def penalty_text
      "You've been sprayed with acid!"
    end

    def success_text
      "You duck under the acidic spray"
    end
  end
end
