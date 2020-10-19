class Food
  attr_reader :description, :upc, :ingredients, :brand_owner

  def initialize(food_params)
    @description = food_params[:description]
    @upc = food_params[:gtinUpc]
    @ingredients = food_params[:ingredients]
    @brand_owner = food_params[:brandOwner]
  end
end
