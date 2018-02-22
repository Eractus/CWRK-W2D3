require 'towers'

RSpec.describe TowersOfHanoi do
  subject(:towers) { TowersOfHanoi.new }

  describe "#initialize" do
    it "should initialize an array of arrays with the first array containing the three disks" do
      expect(towers.array).to eq([ [1, 2, 3], [], [] ])
    end
  end

  describe "#move" do
    before(:each) { towers.move(0, 1) }
    context "when choosing from an empty tower" do
      it "should raise an error" do
        expect { towers.move(2, 0) }.to raise_error("The tower is empty.")
      end
    end

    context "when movement is invalid" do
      it "should raise an error" do
        towers.array = [ [2, 3], [1], [] ]
        expect { towers.move(0, 1) }.to raise_error("Invalid movement!")
      end
    end

    context "when movement is valid" do
      it "should move the top disc from the current tower to new tower" do
        expect(towers.move(0,2)).to eq([2])
      end
    end
  end

  describe "#won?" do
    context "when the first tower is not empty" do
      it "should return false" do
        towers.array = [ [3], [1], [2] ]
        expect(towers.won?).to eq(false)
      end
    end

    context "when the first tower is empty" do
      it "should return false if neither towers two nor three is empty" do
        towers.array = [ [], [1], [2,3] ]
        expect(towers.won?).to eq(false)
      end

      it "should return true if tower two or three is empty" do
        towers.array = [ [], [], [1,2,3] ]
        expect(towers.won?).to eq(true)
      end
    end
  end
end
