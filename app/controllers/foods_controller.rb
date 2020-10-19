class FoodsController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov")

    response = conn.get("/fdc/v1/foods/search?query=#{food}&pageSize=10&api_key=#{ENV['FOOD_API_KEY']}")

    json = JSON.parse(response.body, symbolize_names: true)
    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
