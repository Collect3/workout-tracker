class RenameUserProgramColumns < ActiveRecord::Migration
  def change
    rename_column :user_programs, :programId, :program_id
    rename_column :user_programs, :userId, :user_id
  end
end
