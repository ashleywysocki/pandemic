require 'spec_helper'

describe City do
  context "when created" do
    it "requires a name" do
      city = City.new(:color => "blue")
      city.valid?
      city.errors[:name].should_not be_empty
    end
    it "requires a color" do
      city = City.new(:name => "Atlanta")
      city.valid?
      city.errors[:color].should_not be_empty
    end
    it "requires a valid color" do
      city = City.new(:name => "Los Angeles", :color => "purple")
      city.valid?
      city.errors[:color].should_not be_empty
    end
  end
end
