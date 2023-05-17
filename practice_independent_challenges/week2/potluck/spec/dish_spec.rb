require './lib/dish'
require "RSpec"

describe Dish do
  before(:each) do
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  context "#initialize" do
    it "exists" do
      expect(@dish).to be_a(Dish)
    end

    it "has a name" do
      expect(@dish.name).to eq("Couscous Salad")
    end

    it "has a category" do
      expect(@dish.category).to eq(:appetizer)
    end

    it "needs a name" do
      expect{ 
        nameless_dish = Dish.new(:appteizer)
      }.to raise_error
    end

    it "needs a category" do
      expect{ 
        uncategorized_dish = Dish.new(:appteizer)
      }.to raise_error
    end
  end
end