class CreateWos < ActiveRecord::Migration
  def change
    create_table :wos do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :order
      t.integer :intensity_id
      t.integer :num_sets
      t.integer :num_reps
      t.float :time
      t.float :distance

      t.timestamps
    end
  end
end
