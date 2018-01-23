module Card
  class Goblin < Fight

    def opening_text
      'You encounter a goblin'
    end

    def first_penalty_text
      'lose 1 health'
    end

    def inflict_first_penalty
      player.take_damage(1)
    end

    def second_penalty_text
      'lose 2 health'
    end

    def inflict_second_penalty
      player.take_damage(2)
    end

    def third_penalty_text
      'lose 3 health'
    end

    def inflict_third_penalty
      player.take_damage(3)
    end

    def combat_value
      @combat_value ||= [7, 8, 9].sample
    end
  end
end
