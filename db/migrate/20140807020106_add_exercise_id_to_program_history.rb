class AddExerciseIdToProgramHistory < ActiveRecord::Migration
  def change
    add_column :program_histories, :exercise_id, :integer
  end
end
