class AddSkippedToProgramHistory < ActiveRecord::Migration
  def change
    add_column :program_histories, :skipped, :boolean
  end
end
