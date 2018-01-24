module Card
  class Fight < Base

    def start
      Screen::Update.show(description)
      choose_action

      fight
    end

    private

    def description
      [
        opening_text,
        '',
        "Combat value: #{combat_value}",
        "-1 -> -2    #{first_penalty_text}",
        "-3 -> -5    #{second_penalty_text}",
        "-6 and down #{third_penalty_text}",
      ]
    end

    def choose_action
      option_group = Screen::OptionGroup.new([:fight])
      result = option_group.select_option
    end

    def fight
      required_roll = combat_value - player.combat_modifier
      Screen::Update.show([
        "Combat value: #{combat_value}",
        "You needed to roll #{required_roll}"
      ])
      gets

      roll = rand(5) + rand(5) + 2
      fail_amount = roll - required_roll
      if fail_amount <= -6
        inflict_third_penalty
        success_fail_text = third_penalty_text
      elsif fail_amount <= -3 && fail_amount >= -5
        inflict_second_penalty
        success_fail_text = second_penalty_text
      elsif fail_amount <= -1 && fail_amount >= -2
        inflict_first_penalty
        success_fail_text = first_penalty_text
      else
        success_fail_text = 'Well done!'
      end
      Screen::Update.show([
        "You rolled #{roll}",
        success_fail_text
      ])
    end
  end
end
