module Card
  class GoblinPod < Goblin

    def enemy_num
      3
    end

    def opening_text
      'You encounter a group of goblins'
    end

    def update_text
      "There are still #{current_enemies} goblins left"
    end
  end
end
