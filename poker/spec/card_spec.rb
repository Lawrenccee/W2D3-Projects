require "rspec"
require "card"

describe "Card" do
  subject(:card) { Card.new("2", "clubs") }

  describe "#initialize" do
    it "sets the value" do
      expect(card.value).to eq("2")
    end

    it "sets the suit" do
      expect(card.suit).to eq("clubs")
    end
  end

  describe "::make_deck" do
    let(:deck) { Card.make_deck }
    it "creates an array of 52 cards" do
      expect(deck.length).to eq(52)
    end

    it "has 4 of each card value" do
      Card::VALUES.each do |value|
        expect(deck.select { |card| card.value == value }.length).to eq(4)
      end
    end

    it "has 13 cards of each suit" do
      Card::SUITS.each do |suit|
        expect(deck.select { |card| card.suit == suit }.length).to eq(13)
      end
    end
  end

  describe "#==" do
    let(:other_card) { Card.new("2", "clubs") }
    let(:another_card) { Card.new("K", "hearts") }

    it "correcly determines whether one card is equal to another" do
      expect(card == other_card).to be true
    end

    it "correcly determines whether one card is not equal to another" do
      expect(card == another_card).to be false
    end
  end
end
