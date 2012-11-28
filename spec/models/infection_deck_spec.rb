require 'spec_helper'

describe InfectionDeck do
  context "after creation" do
    it "creates a 48 card deck" do
      deck = InfectionDeck.create
      deck_size = deck.cities.size
      deck_size.should == 48
    end
  end
end
