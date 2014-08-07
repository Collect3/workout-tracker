class CreateWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :workout_exercises do |t|
      t.string :name
      t.integer :program_id
      t.integer :day
      t.integer :week

      t.timestamps
    end
  end
end
