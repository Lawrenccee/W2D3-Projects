class Card
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K).freeze

  SUITS = %w(clubs spades diamonds hearts).freeze

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def self.make_deck
    deck = []

    VALUES.each do |value|
      SUITS.each do |suit|
        deck << Card.new(value, suit)
      end
    end

    deck
  end

  def ==(card)
    self.value == card.value && self.suit == card.suit
  end
end
