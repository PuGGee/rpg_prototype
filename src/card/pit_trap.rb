module Card
  class PitTrap < Base

    def opening_text
      "You encounter a pit trap!"
    end

    def start
      required_roll = difficulty_value - player.agility_modifier
      Screen::Update.show([
        "Difficulty: #{difficulty_value}",
        "You need to roll #{required_roll}"
      ])
      gets

      roll = rand(5) + rand(5) + 2
      fail_amount = roll - required_roll
      inflict_penalty if fail_amount < 0
      Screen::Update.show([
        "You rolled #{roll}",
        *(fail_amount < 0 ? penalty_text : success_text)
      ])
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
