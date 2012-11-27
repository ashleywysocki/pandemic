require 'spec_helper'

describe Role do
  context "when created" do
    it "requires a name" do
      role = Role.new
      role.valid?
      role.errors[:name].should_not be_empty
    end
    it "requires a description" do
      role = Role.new
      role.valid?
      role.errors[:description].should_not be_empty
    end
  end
end
