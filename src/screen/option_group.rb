module Screen
  class OptionGroup

    GLOBAL_OPTIONS = [:stats, :equip]

    attr :options, :player

    def initialize(player, options)
      @player = player
      @options = options
    end

    def text
      [
        "Currently available options",
        options.join(', ')
      ]
    end

    def select_option
      Update.show(text)
      loop do
        input = gets.chomp
        if options.map(&:to_s).include?(input)
          if GLOBAL_OPTIONS.include?(input.to_sym)
            Global.send(input, player)
            Update.show(text)
          else
            return input.to_sym
          end
        else
          Update.show([
            "#{input} is not a valid options",
            "",
            "Currently available options",
            options.join(', ')
          ])
        end
      end
    end
  end
end
