class Ingredient < ApplicationRecord
    belongs_to :recipe
    validates :name, presence: true, uniqueness: {scope: :recipe_id}
    validates :amount, presence: true
    validates :measure_rate, presence: true

end
