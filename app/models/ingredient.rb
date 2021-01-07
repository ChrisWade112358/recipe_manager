class Ingredient < ApplicationRecord
    belongs_to :recipe
    validates :name, presence: true, uniqueness: {scope: :recipe_id}
    validates :amount, presence: true
    validates :measure_rate, presence: true

    MEASURE = ['Oz.', 'tsp.', 'Tbsp.', 'lb.', 'cup.', "mL.", "l.","g.", "Kg.", "Stick", "gal.", "pt.", "qt.", "fl. Oz."]

end
