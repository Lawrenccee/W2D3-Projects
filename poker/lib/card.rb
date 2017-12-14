class Card
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze

  VALUES_HASH = {}
  (2..14).each do |val|
    VALUES_HASH[VALUES[val - 2]] = val
  end
  VALUES_HASH.freeze

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

  def >(card)
    VALUES_HASH[self.value] > VALUES_HASH[card.value]
  end

  def <(card)
    VALUES_HASH[self.value] < VALUES_HASH[card.value]
  end
end
