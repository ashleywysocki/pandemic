require 'spec_helper'

describe Game do
  context "after creation" do
    it "is not won or lost" do
      game = Game.create
      game.won_game.should == false
      game.lost_game.should == false
    end
    
    it "creates a player deck" do
      game = Game.create
      game.player_deck should_not == nil
    end
  end
end
