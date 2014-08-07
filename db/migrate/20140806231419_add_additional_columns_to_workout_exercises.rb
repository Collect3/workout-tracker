class AddAdditionalColumnsToWorkoutExercises < ActiveRecord::Migration
  def change
    add_column :workout_exercises, :subtitle, :text
    add_column :workout_exercises, :rest_time, :float
    add_column :workout_exercises, :set_type_id, :integer
  end
end
