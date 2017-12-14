require "rspec"
require "deck"

describe "Deck" do
  subject(:deck) { Deck.new }
  let(:copy) { Deck.new }

  describe "#initialize" do

    it "creates an array of 52 elements" do
      expect(deck.cards.length).to eq(52)
    end

    it "sets card count to 52" do
      expect(deck.card_count).to eq(52)
    end
  end

  describe "#shuffle" do
    it "changes the order of the cards" do
      expect(deck.cards).to eq(copy.cards)
      expect(deck.shuffle).to_not eq(copy.cards)
    end
  end

  describe "#cut" do
    it "cuts the deck in half" do
      expect(deck.cut[0]).to eq(copy.cards[copy.card_count / 2])
    end
  end

  describe "#draw_top_card" do
    it "if no argument, removes one card" do
      expect(deck.draw_top_card.length).to eq(1)
      expect(deck.card_count).to eq(51)
    end

    it "removes number of cards specified in argument" do
      expect(deck.draw_top_card(5).length).to eq(5)
      expect(deck.card_count).to eq(47)
    end
  end
end
