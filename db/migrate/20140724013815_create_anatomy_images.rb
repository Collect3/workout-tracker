class CreateAnatomyImages < ActiveRecord::Migration
  def change
    create_table :anatomy_images do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
