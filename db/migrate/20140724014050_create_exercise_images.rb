class CreateExerciseImages < ActiveRecord::Migration
  def change
    create_table :exercise_images do |t|
      t.string :name
      t.string :gender
      t.string :image_url

      t.timestamps
    end
  end
end
