class CreateProgramHistories < ActiveRecord::Migration
  def change
    create_table :program_histories do |t|
      t.integer :user_id
      t.integer :program_id
      t.integer :workout_id
      t.integer :workout_exercise_id
      t.integer :set_num
      t.float :time_val
      t.float :distance_val
      t.float :weight_val
      t.integer :rep_val

      t.timestamps
    end
  end
end
