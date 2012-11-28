require 'spec_helper'

describe Disease do
  context "when created" do
    it "requires a color" do
      disease = Disease.new
      disease.valid?
      disease.errors[:color].should_not be_empty
    end
    
    it "sets statuses to false" do
      disease = Disease.create(:color => "black")
      disease.is_cured.should == false
      disease.is_eradicated.should == false
    end
  end
end
