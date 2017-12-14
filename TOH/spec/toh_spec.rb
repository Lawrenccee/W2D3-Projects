require "rspec"
require "toh"

describe "TowersOfHanoi" do
  subject(:toh) { TowersOfHanoi.new }
  let(:win) { TowersOfHanoi.new }


  describe "#initialize" do
    it "initializes towers with 3 arrays" do
      expect(toh.towers.length).to eq(3)
    end

    it "initializes the first array with [3, 2 , 1]" do
      expect(toh.towers[0]).to eq([3, 2, 1])
    end

    it "initializes the second and third subarrays as empty" do
      expect(toh.towers[1]).to be_empty
      expect(toh.towers[2]).to be_empty
    end
  end

  describe "#move" do
    it "moves a smaller disc onto a larger disc, or empty tower" do
      toh.move(0, 1)
      expect(toh.towers[0].length).to eq(2)
      expect(toh.towers[1].length).to eq(1)
      toh.move(1, 0)
      expect(toh.towers[0].length).to eq(3)
      expect(toh.towers[1].length).to eq(0)
    end

    it "raises an error if placing a larger disc on a smaller disc" do
      toh.move(0, 1)
      expect { toh.move(0, 1) }.to raise_error("Can't place a larger disc on a smaller disc")
    end
  end

  describe "#won?" do
    it "returns true if tower 2 or 3 have all discs" do
      win.towers = [[], [3, 2, 1], []]
      expect(win.towers).to eq([[], [3, 2, 1], []]).or(eq([[], [], [3, 2, 1]]))
      expect(win.won?).to eq(true)
    end

    it "returns false if all discs are not on tower 2 or 3" do
      expect(toh.towers[1].length).to_not eq(3)
      expect(toh.towers[2].length).to_not eq(3)
      expect(toh.won?).to eq(false)
    end
  end
end
