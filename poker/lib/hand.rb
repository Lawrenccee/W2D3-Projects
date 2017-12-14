class Hand
  attr_reader :cards

  def initialize
    @cards = []
  end

  def receive_cards(cards)
    @cards+=cards
  end

  def >(hand)

  end

  private
  def identify_hand(hand)

  end
end
