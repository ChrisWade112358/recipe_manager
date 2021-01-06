class AddUserIdToRecipies < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :user_id, :integer, null: false
  end
  add_index :recipes, [:user_id, :name]
end
