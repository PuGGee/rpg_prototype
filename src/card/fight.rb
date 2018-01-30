module Card
  class Fight < Base

    def start
      @killed = 0
      loop do
        catch(:win) do
          Screen::Update.show(description)
          choose_action

          fight
        end
        @killed += 1
        break if @killed >= enemy_num
      end
    end

    private

    def enemy_num
      1
    end

    def current_enemies
      enemy_num - (@killed || 0)
    end

    def description
      [
        @killed && @killed > 0 ? update_text : opening_text,
        '',
        "Combat value: #{combat_value}",
        "-1 -> -2    #{first_penalty_text}",
        "-3 -> -5    #{second_penalty_text}",
        "-6 and down #{third_penalty_text}",
      ]
    end

    def choose_action
      option_group = Screen::OptionGroup.new(player, [Screen::Global::Actions.stats, Screen::Global::Actions.items, :fight, :use], :fight)
      loop do
        option = option_group.select_option
        if option == :fight
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

    def use_ranged_weapon(ranged_weapon)
      required_roll = combat_value - (player.combat_modifier + ranged_weapon.ranged_combat_modifier)
      required_roll += player.weapon.combat_value if player.weapon
      required_roll -= 1 if player.has_talent?(:eagle_eyed)
      Screen::Update.show([
        "Combat value: #{combat_value}",
        "You need to roll #{required_roll}"
      ])
      gets

      roll = rand(5) + rand(5) + 2
      fail_amount = roll - required_roll
      Screen::Update.show([
        "You rolled #{roll}",
        fail_amount < 0 ? 'Your shot missed the mark' : 'Your shot killed the creature'
      ])
      throw(:win) if fail_amount >= 0
    end

    def fight
      required_roll = combat_value - player.combat_modifier - (player.has_talent?(:buff) ? 1 : 0)
      Screen::Update.show([
        "Combat value: #{combat_value}",
        "You need to roll #{required_roll}"
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
