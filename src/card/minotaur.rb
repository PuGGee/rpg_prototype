module Card
  class Minotaur < Fight

    def opening_text
      'You encounter a minotaur'
    end

    def first_penalty_text
      'lose 2 health'
    end

    def inflict_first_penalty
      player.take_damage(2)
    end

    def second_penalty_text
      'lose 4 health'
    end

    def inflict_second_penalty
      player.take_damage(4)
    end

    def third_penalty_text
      'instant death!'
    end

    def inflict_third_penalty
      Screen::Update.show("You're dead!")
      abort
    end

    def combat_value
      @combat_value ||= [8, 9, 10].sample
    end
  end
end
