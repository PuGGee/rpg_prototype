module Card
  class Goblin < Fight

    def opening_text
      'You encounter a goblin'
    end

    def combat_value
      @combat_value ||= [7, 8, 9].sample
    end
  end
end
