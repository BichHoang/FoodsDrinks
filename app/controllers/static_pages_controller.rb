class StaticPagesController < ApplicationController
  def home
    @hot_foods = Product.get_hot_food
    @hot_drinks = Product.get_hot_drink
  end

  def help; end

  def about; end

  def contact; end
end
