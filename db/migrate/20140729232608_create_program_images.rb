class CreateProgramImages < ActiveRecord::Migration
  def change
    create_table :program_images do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
