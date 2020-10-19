require "rails_helper"

RSpec.describe Food do
  it "exists" do
    food_data = {
      description: "SWEET POTATOES",
      gtinUpc: "070560951975",
      brandOwner: "The Pictsweet Company",
      ingredients: "SWEET POTATOES."
    }

    food = Food.new(food_data)

    expect(food).to be_a(Food)
    expect(food.description).to eq('SWEET POTATOES')
    expect(food.upc).to eq('070560951975')
    expect(food.brand_owner).to eq('The Pictsweet Company')
    expect(food.ingredients).to eq('SWEET POTATOES.')
  end
end
