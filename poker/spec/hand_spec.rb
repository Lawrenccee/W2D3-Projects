require "rspec"
require "hand"

describe "Hand" do
  subject(:hand) { Hand.new }
  let(:other_hand) { Hand.new }
  let(:another_hand) { Hand.new }

  describe "#initialize" do
    it "should have an array of 0 elements" do
      expect(hand.cards).to be_empty
    end
  end

  describe "#receive_cards" do
    it "receives one or more cards"
  end

  describe "#>" do
    it "correctly determines whether one hand is greater than another" do
      expect(hand > other_hand).to be true
    end

    it "correctly determines whether one hand is not greater than another" do
      expect(hand > another_hand).to be false
    end
  end
end

  # describe "#<" do
  #   it "correctly determines whether one card is less than another" do
  #     expect(other_hand < another_card).to be true
  #   end
  #
  #   it "correctly determines whether one card is not less than another" do
  #     expect(another_card < card).to be false
  #   end



# describe "#>" do
#   it "correctly determines whether one card is greater than another" do
#     expect(another_card > other_card).to be true
#   end
#
#   it "correctly determines whether one card is not greater than another" do
#     expect(card > another_card).to be false
#   end
# end
#
# describe "#<" do
#   it "correctly determines whether one card is less than another" do
#     expect(other_card < another_card).to be true
#   end
#
#   it "correctly determines whether one card is not less than another" do
#     expect(another_card < card).to be false
#   end
# end
