class FoodsController < ApplicationController
  def index
    @foods = SearchFacade.new.fetch_food_data(params[:q])
  end
end
