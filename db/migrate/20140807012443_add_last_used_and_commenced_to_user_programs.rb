class AddLastUsedAndCommencedToUserPrograms < ActiveRecord::Migration
  def change
    add_column :user_programs, :last_used, :timestamp
    add_column :user_programs, :commenced, :timestamp

  end
end
