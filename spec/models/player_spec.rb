require 'spec_helper'

describe Player do
  context "when created" do
    it "requires a color" do
      player = Player.new
      player.valid?
      player.errors[:color].should_not be_empty
    end
  end
end
