class AddForceTypeToExcercises < ActiveRecord::Migration
  def change
    add_column :exercises, :force_type_id, :integer
  end
end
