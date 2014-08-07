class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :also_known_as
      t.integer :exercise_type_id
      t.integer :rating
      t.integer :mechanics_type_id
      t.integer :equipment_id
      t.integer :level_id
      t.text :benefits
      t.integer :exercise_image_id
      t.integer :anatomy_image_id
      t.boolean :has_timer_countdown
      t.integer :primary_muscle_id
      t.integer :secondary_muscle_id
      t.integer :metric_type_id

      t.timestamps
    end
  end
end
