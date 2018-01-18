module Core
  class Player

    def self.create
      @instance = new
    end

    def self.get
      @instance
    end

    private_class_method :new

    def some_method

    end
  end
end
