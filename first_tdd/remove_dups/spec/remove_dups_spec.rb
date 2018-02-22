require "remove_dups"

RSpec.describe "#remove_dups" do
  context "when there are dups" do
    it "removes dups from the array" do
      expect([1,1,2,2,3].remove_dups).to eq([1,2,3])
    end
  end

  context "when there aren't dups" do
    it "returns the same array" do
      expect([1,2,3].remove_dups).to eq([1,2,3])
    end
  end
end
