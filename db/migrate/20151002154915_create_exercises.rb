class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id
      t.string :name
      t.date :date
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
