class Recipe < ApplicationRecord
    has_many :ingredients
    has_many :users
    accepts_nested_attributes_for :ingredients
    validates :user, presence: true
    validates :name, presence: true, uniqueness: {scope: :user_id}
    validates :description, presence: true
    validates :directions, presence: true
end
