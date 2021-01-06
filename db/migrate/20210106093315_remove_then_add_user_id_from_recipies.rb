class RemoveThenAddUserIdFromRecipies < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipies, :user_id, :integer
    add_column :recipies, :user_id, :belongs_to, null: false, foreign_key: true
    
  end
end
