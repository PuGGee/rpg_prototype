module Screen
  class Global

    def self.stats
      Update.show(Core::Player.get.stats)
    end
  end
end
