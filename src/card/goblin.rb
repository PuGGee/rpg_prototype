module Card
  class Goblin < Fight

    def opening_text
      'You encounter a goblin'
    end

    def first_penalty_text
      "lose #{current_enemies} health"
    end

    def inflict_first_penalty
      player.take_damage(current_enemies)
    end

    def second_penalty_text
      "lose #{2 * current_enemies} health"
    end

    def inflict_second_penalty
      player.take_damage(2 * current_enemies)
    end

    def third_penalty_text
      "lose #{3 * current_enemies} health"
    end

    def inflict_third_penalty
      player.take_damage(3 * current_enemies)
    end

    def combat_value
      @combat_value ||= [5, 6, 7].sample
    end
  end
end
