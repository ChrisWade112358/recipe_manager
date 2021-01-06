class RemoveThenAddRecipeIdFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :recipe_id, :integer
    add_column :ingredients, :recipe_id, :belongs_to, null: false, foreign_key: true
    
  end
  add_index :recipies, [:user_id, :name]
end
