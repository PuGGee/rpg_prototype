module Screen
  class Result

    attr :value, :text

    def initialize(success:, value: nil, text: nil)
      @success = success
      @text = text
      @value = value
    end

    def success?
      @success
    end
    alias_method :continue?, :success?

    def update
      return nil unless text && text != ''
      Update.new(@text)
    end
  end
end
