class RenameUsersColumns < ActiveRecord::Migration
  def change
    rename_column :users, :firstName, :first_name
    rename_column :users, :lastName, :last_name
    rename_column :users, :dateOfBirth, :date_of_birth
    rename_column :users, :appSkinId, :app_skin_id
  end
end
