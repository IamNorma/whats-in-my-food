class SearchFacade
  def fetch_food_data(food)
    response = FoodService.new.search(food)
    
    response[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
