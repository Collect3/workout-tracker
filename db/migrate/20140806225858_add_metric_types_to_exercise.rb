class AddMetricTypesToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :primary_metric_type_id, :integer
    add_column :exercises, :secondary_metric_type_id, :integer
  end
end
