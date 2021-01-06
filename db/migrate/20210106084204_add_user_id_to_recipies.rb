class AddUserIdToRecipies < ActiveRecord::Migration[6.1]
  def change
    add_column :recipies, :user_id, :integer, null: false
    add_column :recipies, :ingredient_id, :integer, null: false
  end
end
