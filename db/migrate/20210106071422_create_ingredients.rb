class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false, default: ""
      t.decimal :amount, null: false, default: ""
      t.string :measure_rate, null: false, default: "0.00"
      t.string :amount_on_hand
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
