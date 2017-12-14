require "rspec"
require "TDD"

describe "#my_uniq" do
  let (:arr) { arr = [1, 2, 1, 3, 3] }

  it "removes duplicates from the array" do
    expect(arr.my_uniq).to eq([1, 2, 3])
  end

  it "returns a new array" do
    expect(arr.my_uniq).to_not be(arr)
  end

end

describe "#two_sum" do
  let (:arr) { arr = [-1, -2, 1] }
  let (:arr2) { arr2 = [-1, 0, 2, -2, 1] }

  it "returns empty array if no pairs found" do
    expect([].two_sum).to eq([])
  end

  it "returns all pairs that sum to zero" do
    expect(arr.two_sum).to eq([[0, 2]]).or(eq([[2, 0]]))
  end

  it "has smaller first elements come first" do
    expect(arr.two_sum).to eq([[0, 2]])
  end

  it "has smaller second elements come first" do
    expect(arr2.two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  let (:rows) { rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  let (:cols) { cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]}

  it "transposes the matrix" do
    expect(rows.my_transpose).to eq(cols)
  end
end

describe "#stock_picker" do
  let (:price_history) { price_history = [
    20, 25, 22, 29, 15, 10, 1, 5, 9, 16, 20
  ]}

  let (:str_hist) { str_hist = [
    20, "25", 22, 29, 15, 10, 1, "asdf", 9, 16, 20
  ]}

  it "raises exception if contains non numbers" do
    expect{ str_hist.stock_picker }.to raise_error("Array includes non numbers")
  end

  it "outputs the most profitable pair of days to buy then sell" do
    expect(price_history.stock_picker).to eq([6, 10])
  end
end
