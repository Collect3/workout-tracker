class RemoveDataTypeFromMetricTypes < ActiveRecord::Migration
  def change
    remove_column :metric_types, :data_type
  end
end
