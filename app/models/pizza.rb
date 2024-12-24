class Pizza < ApplicationRecord
    has_and_belongs_to_many :toppings
  
    validates :name, presence: true, uniqueness: true
  
    private
  
    def unique_toppings
      toppings_set = toppings.map(&:id).sort
      if Pizza.joins(:toppings).where(toppings: { id: toppings_set }).exists?
        errors.add(:toppings, "A pizza with the same toppings already exists")
      end
    end
  end
  