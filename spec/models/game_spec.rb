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
      game.player_deck.should_not == nil
      game.player_deck.cities.size.should == 48
    end
    
    it "creates an infection deck" do
      game = Game.create
      game.infection_deck.should_not == nil
      game.infection_deck.cities.size.should == 48
    end
    
    it "creates four diseases" do
      game = Game.create
      game.diseases.size.should == 4
    end
    
    it "creates disease cubes for infected cities" do
      game = Game.create
      game.disease_cubes.size.should == 18
    end
  end
end
