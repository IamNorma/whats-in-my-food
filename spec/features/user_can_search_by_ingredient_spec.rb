require 'rails_helper'

feature "user can search for foods" do
  scenario "by ingredient" do
    visit '/'

    fill_in :q, with: 'sweet potatoes'

    click_on "Search"

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("20 Total Results")
    expect(page).to have_css(".food", count: 10)

    within(first(".food")) do
      expect(page).to have_css(".upc")
      upc = find(".upc").text
      expect(upc).to_not be_empty

      expect(page).to have_css(".description")
      description = find(".description").text
      expect(description).to_not be_empty

      expect(page).to have_css(".brand")
      brand = find(".brand").text
      expect(brand).to_not be_empty

      expect(page).to have_css(".ingredients")
      ingredients = find(".ingredients").text
      expect(ingredients).to_not be_empty
    end
  end
end
