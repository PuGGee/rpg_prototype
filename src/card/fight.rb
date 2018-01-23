module Card
  class Fight < Base

    def start
      Screen::Update.show(opening_text)
      choose_action

      fight
      gets
    end

    private

    def choose_action
      option_group = Screen::OptionGroup.new([:fight])
      result = option_group.select_option
    end

    def fight
      roll = rand(5) + rand(5) + 2
      required_roll = combat_value - player.combat_modifier
      success = roll >= required_roll
      Screen::Update.show([
        "Combat value: #{combat_value}",
        "You needed to roll #{required_roll}",
        "",
        "You rolled #{roll}",
        success ? 'Well done!' : 'You lose 1 life'
      ])
      player.take_damage(1) unless success
    end
  end
end
