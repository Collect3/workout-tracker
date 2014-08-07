class RemoveSecondaryMuscleColumn < ActiveRecord::Migration
  def change
    remove_column :exercises, :secondary_muscle_id

  end
end
