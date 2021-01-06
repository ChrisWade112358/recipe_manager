class CreateRecipies < ActiveRecord::Migration[6.1]
  def change
    create_table :recipies do |t|
      t.string :name, null: false, default: ""
      t.text :directions
      t.text :ingredients
      t.string :category, null: false, default: ""
      t.datetime :date_last_made

      t.timestamps
    end
  end
end
