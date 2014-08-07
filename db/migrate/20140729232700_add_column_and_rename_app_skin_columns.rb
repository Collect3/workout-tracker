class AddColumnAndRenameAppSkinColumns < ActiveRecord::Migration
  def change
    rename_column :app_skins, :url, :image_url
    add_column :app_skins, :name, :string
  end
end
