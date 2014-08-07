class RemoveAppSkinIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :app_skin_id
  end
end
