class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :number_of_steps
      t.date :date

      t.timestamps null: false
    end
  end
end
