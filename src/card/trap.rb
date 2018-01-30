module Card
  class Trap < Base

    def opening_text
      "You encounter a trap!"
    end

    def start
      Screen::Update.show(opening_text)
      choose_action
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

    def choose_action
      option_group = Screen::OptionGroup.new(player, [Screen::Global::Actions.stats, Screen::Global::Actions.items, :continue, :use], :continue)
      loop do
        option = option_group.select_option
        if option == :continue
          break
        elsif option == :use
          use_item
        end
      end
    end

    def use_item
      option_group = Screen::OptionGroup.new(player, [*player.combat_items.map(&:name), :back], :back)
      option = option_group.select_option
      unless option == :back
        item = player.get_item(option)
        if item.ranged_weapon?
          use_ranged_weapon(item)
        else
          player.use_combat_item(option)
        end
      end
    end

    def difficulty_value
      raise 'not implemented'
    end

    def inflict_penalty
    end

    def penalty_text
      'something bad happens'
    end

    def success_text
      "You successfully avoid the trap"
    end
  end
end
