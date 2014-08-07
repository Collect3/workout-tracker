class CreateSecondaryMuscles < ActiveRecord::Migration
  def change
    create_table :secondary_muscles do |t|
      t.integer :exercise_id
      t.integer :muscle_id

      t.timestamps
    end
  end
end
