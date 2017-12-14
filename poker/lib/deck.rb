require "card"

class Deck
  attr_reader :cards

  def initialize
    @cards = Card.make_deck
  end

  def card_count
    @cards.length
  end

  def shuffle
    @cards.shuffle!
  end

  def cut
    @cards.rotate(card_count / 2)
  end

  def draw_top_card(n = 1)
    cards_drawn = []

    until cards_drawn.length == n
      cards_drawn << @cards.pop
    end

    cards_drawn
  end
end
