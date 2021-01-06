class AddDecriptionToRecipies < ActiveRecord::Migration[6.1]
  def change
    add_column :recipies, :description, :text
  end
end
