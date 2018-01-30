module Core
  class Display

    def self.show_card(card)
      choose_action
      result = catch(:end_event) do
        card.start
      end
      if result == :shuffle
        Cards.reshuffle(card)
      end
      gets
    end

    def self.choose_action
      option_group = Screen::OptionGroup.new(Player.get, [
        Screen::Global::Actions.stats,
        Screen::Global::Actions.items,
        Screen::Global::Actions.equip,
        :continue,
      ], :continue)
      loop do
        option = option_group.select_option
        break if option == :continue
      end
    end
  end
end
