class AddAlternativeExerciseIdToWorkoutExercise < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :alternative_exercise_id, :integer
  end
end
