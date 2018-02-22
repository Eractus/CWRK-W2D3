require 'two_sum'

RSpec.describe "#two_sum" do
  context "when the number at first index and second index sum to zero" do
    it "should return an array of the arrays of two indices that sum to zero" do
      expect([-1,0,2,-2,1].two_sum).to eq([[0,4], [2,3]])
    end
  end

  context "when the number at first index and second index don't sum to zero" do
    it "should return an empty array" do
      expect([1,2,3,4].two_sum).to eq([])
    end
  end
end
