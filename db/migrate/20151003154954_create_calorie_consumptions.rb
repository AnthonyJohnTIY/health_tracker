class CreateCalorieConsumptions < ActiveRecord::Migration
  def change
    create_table :calorie_consumptions do |t|
      t.string :name
      t.integer :amount
      t.date :date

      t.timestamps null: false
    end
  end
end
