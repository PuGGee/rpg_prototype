module Card
  class Fight < Base

    def next
      return false if @run
      roll = rand(5) + rand(5) + 2
      required_roll = combat_value - player.combat_modifier
      success = roll >= required_roll
      @text = [
        "Combat value: #{combat_value}",
        "You needed to roll #{required_roll}",
        "",
        "You rolled #{roll}",
        success ? 'Well done!' : 'You lose 1 life'
      ]
      player.take_damage(1) unless success
      @run = true
    end
  end
end
