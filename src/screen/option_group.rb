module Screen
  class OptionGroup

    GLOBAL_OPTIONS = [:stats, :equip]

    attr :result

    def initialize(options, exclude_globals = false)
      @options = options
      @exclude_globals = exclude_globals
    end

    def options
      (@exclude_globals ? [] : GLOBAL_OPTIONS) + @options
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
            Global.send(input)
            Update.show(text)
          else
            return input
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
