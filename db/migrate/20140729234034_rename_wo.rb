class RenameWo < ActiveRecord::Migration
  def change
    rename_table :wos, :workout_exercises
  end
end
