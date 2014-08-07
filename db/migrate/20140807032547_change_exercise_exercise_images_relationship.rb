class ChangeExerciseExerciseImagesRelationship < ActiveRecord::Migration
  def change

    remove_column :exercises, :exercise_image_id
    add_column :exercise_images, :exercise_id, :integer
  end
end
