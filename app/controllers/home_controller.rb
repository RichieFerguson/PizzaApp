class HomeController < ApplicationController
  def index
    # Add this line to define @pizzas
    @pizzas = Pizza.all
  end
end
