class RemoveMetricTypeIdColumnFromExercise < ActiveRecord::Migration
  def change
    remove_column :exercises, :metric_type_id
  end
end
