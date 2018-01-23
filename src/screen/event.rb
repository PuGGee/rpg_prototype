module Screen
  class Event < Element

    def self.show(text)
      new(text).render
    end

    attr :text

    def initialize(text)
      @text = text
    end

    def render
      puts "*#{centre('-')}*"
      puts "*#{centre(' ')}*"
      if text.is_a?(Array)
        text.each do |line|
          puts "*#{centre(line, ' ')}*"
        end
      else
        puts "*#{centre(text, ' ')}*"
      end
      puts "*#{centre(' ')}*"
      puts "*#{centre('-')}*"
    end

    private

    def centre(string = '', fill_character)
      fill_length = ((max_text_length + 4) - string.length) / 2
      fill = fill_character * fill_length
      "#{fill}#{string}#{fill}#{fill_character if string.length.odd? ^ max_text_length.odd?}"
    end

    def max_text_length
      if text.is_a?(Array)
        text.max_by(&:length).length
      else
        text.length
      end
    end
  end
end
