module Card
  class LordDemulon < Fight

    def opening_text
      'You encounter the legendary lord demulon'
    end

    def first_penalty_text
      'lose 4 health'
    end

    def inflict_first_penalty
      player.take_damage(4)
    end

    def second_penalty_text
      'lose 4 health and a random item'
    end

    def inflict_second_penalty
      player.take_damage(4)
      player.remove_random_item
    end

    def third_penalty_text
      'lose 4 health and all your items'
    end

    def inflict_third_penalty
      player.take_damage(4)
      player.items.clear
    end

    def combat_value
      14
    end
  end
end
