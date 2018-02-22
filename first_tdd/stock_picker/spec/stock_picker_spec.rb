require 'stock_picker'

RSpec.describe "#stock_picker" do
  subject(:stocks) { [11, 5, 7, 8, 2, 10, 3, 5] }

  it "should return a pair of days that are the most profitable" do
    expect(stocks.stock_picker).to eq([4, 5])
  end
end
