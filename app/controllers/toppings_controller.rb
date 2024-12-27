class ToppingsController < ApplicationController
  before_action :set_topping, only: [:show, :edit, :update, :destroy]

  def index
    @toppings = Topping.all
  end

  def new
    @topping = Topping.new
  end  

  def create
    @topping = Topping.new(topping_params)
    if @topping.save
      # When the Topping successfully saves, redirect wherever you like:
      redirect_to toppings_path, notice: "Topping created successfully!"
    else
      # If validation fails, re-render the form
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @topping is set by the `set_topping` method
  end

  def edit
    # @topping is set by the `set_topping` method
  end

  def update
    if @topping.update(topping_params)
      redirect_to topping_path(@topping), notice: "Topping was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topping.destroy
    redirect_to toppings_path, notice: "Topping was successfully deleted."
  end

  private

  def set_topping
    @topping = Topping.find(params[:id])
  end

  def topping_params
    params.require(:topping).permit(:name)
  end
end
