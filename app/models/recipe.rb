class Recipe < ApplicationRecord
    has_many :ingredients
    has_many :users
    accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? || attributes['amount'].blank? || attributes['measure_rate'].blank?}
    validates :user, presence: true
    validates :name, presence: true, uniqueness: {scope: :user_id}
    validates :description, presence: true
    validates :directions, presence: true

    CATEGORY = ['Breakfast', 'Appetizer', 'Salad', 'Entree', 'Dessert', "Drink", "Sauce"]
end
