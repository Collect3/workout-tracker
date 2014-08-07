class RenameWorkoutExerciseTable < ActiveRecord::Migration
  def change
    rename_table :workout_exercises, :workouts
  end
end
