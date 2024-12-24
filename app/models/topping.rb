class Topping < ApplicationRecord
    has_and_belongs_to_many :pizzas
  
    validates :name, presence: true, uniqueness: true
  end
  