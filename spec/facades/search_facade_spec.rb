require 'rails_helper'

RSpec.describe 'Search Facade' do
  it 'returns a list of food objects for a given ingredient query' do
    food = 'sweet potatoes'

    foods = SearchFacade.new.fetch_food_data(food)

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Food)
    expect(foods.first.description).to be_a(String)
    expect(foods.first.upc).to be_a(String)
    expect(foods.first.ingredients).to be_a(String)
    expect(foods.first.brand_owner).to be_a(String)
  end
end
